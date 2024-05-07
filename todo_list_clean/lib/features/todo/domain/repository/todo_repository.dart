import 'package:dartz/dartz.dart';
import 'package:todo_list_clean/core/error/failures.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, ToDo>> createTodo(ToDo task);
  Future<Either<Failure, List<ToDo>>> getTodos();
  Future<Either<Failure, ToDo>> getTask(String id);
  Future<Either<Failure, ToDo>> editTodo(ToDo task);
  Future<Either<Failure, ToDo>> removeTodo(String id);
}
