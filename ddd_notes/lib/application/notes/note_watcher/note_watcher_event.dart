part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompleteStarted() =
      _WatchUncompleteStarted;
  const factory NoteWatcherEvent.notesRecieved(
    Either<NoteFailure, KtList<Note>> failureOrNotes,
  ) = _NotesRecieved;
}
