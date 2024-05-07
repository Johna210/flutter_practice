import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list_clean/core/error/failures.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';

class CreateTodo implements UseCase<ToDo, CreateParams> {
  final TodoRepository repository;

  CreateTodo(this.repository);

  @override
  Future<Either<Failure, ToDo>> call(CreateParams params) async {
    return await repository.createTodo(params.task);
  }
}

class CreateParams extends Equatable {
  final ToDo task;

  const CreateParams({required this.task});

  @override
  List<Object?> get props => [task];
}
