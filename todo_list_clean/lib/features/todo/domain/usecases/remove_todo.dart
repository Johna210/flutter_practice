import 'package:dartz/dartz.dart';
import 'package:todo_list_clean/core/error/failures.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';

class RemoveTodo implements UseCase<ToDo, GetParams> {
  final TodoRepository repository;

  RemoveTodo(this.repository);

  @override
  Future<Either<Failure, ToDo>> call(GetParams params) async {
    return await repository.removeTodo(params.id);
  }
}
