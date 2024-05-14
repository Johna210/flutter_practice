import 'package:dartz/dartz.dart';
import 'package:ddd_notes/domain/notes/note.dart';
import 'package:ddd_notes/domain/notes/note_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class INoteRepository {
  // watch notes
  // watch uncompleted notes
  // CUD - create, update and delete notes

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
