import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_notes/domain/notes/i_note_repository.dart';
import 'package:ddd_notes/domain/notes/note.dart';
import 'package:ddd_notes/domain/notes/note_failure.dart';
import 'package:ddd_notes/domain/notes/value_objects.dart';
import 'package:ddd_notes/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _iNoteRepository;

  NoteFormBloc(this._iNoteRepository) : super(NoteFormState.initial()) {
    on<NoteFormEvent>((event, emit) {
      on<_Initialized>(_onIntialized);
      on<_BodyChanged>(_onBodyChanged);
      on<_ColorChanged>(_onColorChanged);
      on<_TodosChanged>(_onTodosChanged);
      on<_Saved>(_onSaved);
    });
  }

  void _onIntialized(_Initialized event, Emitter<NoteFormState> emit) {
    emit(
      event.initialNoteOption.fold(
        () => state,
        (initialNote) => state.copyWith(note: initialNote, isEditing: true),
      ),
    );
  }

  void _onBodyChanged(_BodyChanged event, Emitter<NoteFormState> emit) {
    emit(
      state.copyWith(
          note: state.note.copyWith(body: NoteBody(event.bodyStr)),
          saveFailureOrSuccessOption: none()),
    );
  }

  void _onColorChanged(_ColorChanged event, Emitter<NoteFormState> emit) {
    emit(
      state.copyWith(
          note: state.note.copyWith(color: NoteColor(event.color)),
          saveFailureOrSuccessOption: none()),
    );
  }

  void _onTodosChanged(_TodosChanged event, Emitter<NoteFormState> emit) {
    emit(
      state.copyWith(
          note: state.note.copyWith(
            todos: List3(event.todos.map((primitive) => primitive.toDomain())),
          ),
          saveFailureOrSuccessOption: none()),
    );
  }

  void _onSaved(_Saved event, Emitter<NoteFormState> emit) async {
    Either<NoteFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ),
    );

    if (state.note.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _iNoteRepository.update(state.note)
          : await _iNoteRepository.create(state.note);
    }

    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
