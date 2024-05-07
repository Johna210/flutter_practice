import 'package:dartz/dartz.dart';
import 'package:todo_list_clean/core/error/failures.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';

class GetAllTodos implements UseCase<List<ToDo>, NoParams> {
  final TodoRepository repository;

  GetAllTodos(this.repository);

  @override
  Future<Either<Failure, List<ToDo>>> call(NoParams params) async {
    return await repository.getTodos();
  }
}
