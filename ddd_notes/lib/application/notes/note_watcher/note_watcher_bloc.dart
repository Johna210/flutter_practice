import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_notes/domain/notes/i_note_repository.dart';
import 'package:ddd_notes/domain/notes/note.dart';
import 'package:ddd_notes/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  StreamSubscription<Either<NoteFailure, KtList<Note>>>?
      _noteStreamSubscription;

  NoteWatcherBloc(this._noteRepository) : super(const _Initial()) {
    on<NoteWatcherEvent>((event, emit) {
      event.map(
        watchAllStarted: (e) => _onWatchAllStarted(e, emit),
        watchUncompleteStarted: (e) => _onWatchUncompleteStarted(e, emit),
        notesRecieved: (e) => _onNotesRecieved(e, emit),
      );
    });
  }

  _onWatchAllStarted(
      _WatchAllStarted event, Emitter<NoteWatcherState> emit) async {
    emit(const NoteWatcherState.loading());

    // if watch uncompleted was already running
    await _noteStreamSubscription?.cancel();
    _noteStreamSubscription =
        _noteRepository.watchAll().listen((failureOrNotes) {
      return add(NoteWatcherEvent.notesRecieved(failureOrNotes));
    });
  }

  _onWatchUncompleteStarted(
      _WatchUncompleteStarted event, Emitter<NoteWatcherState> emit) async {
    emit(const NoteWatcherState.loading());

    // if watch all was already running
    await _noteStreamSubscription?.cancel();
    _noteStreamSubscription =
        _noteRepository.watchUncompleted().listen((failureOrNotes) {
      return add(NoteWatcherEvent.notesRecieved(failureOrNotes));
    });
  }

  _onNotesRecieved(_NotesRecieved event, Emitter<NoteWatcherState> emit) {
    emit(
      event.failureOrNotes.fold(
        (f) => NoteWatcherState.loadFailure(f),
        (notes) => NoteWatcherState.loadSuccess(notes),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
