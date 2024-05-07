import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list_clean/core/error/failures.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';

class EditTodo implements UseCase<ToDo, EditParams> {
  final TodoRepository repository;

  EditTodo(this.repository);

  @override
  Future<Either<Failure, ToDo>> call(EditParams params) async {
    return await repository.editTodo(params.task);
  }
}

class EditParams extends Equatable {
  final ToDo task;

  const EditParams({required this.task});

  @override
  List<Object?> get props => [task];
}
