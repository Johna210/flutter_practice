import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_clean/features/todo/domain/usecases/edit_todo.dart';

class MockEditTodo extends Mock implements TodoRepository {}

void main() {
  EditTodo? usecase;
  MockEditTodo? mockEditTodoRepository;

  setUp(() {
    mockEditTodoRepository = MockEditTodo();
    usecase = EditTodo(mockEditTodoRepository!);
    registerFallbackValue(
      ToDo(
        title: 'test',
        id: '1',
        description: 'test',
        dueDate: DateTime.now(),
        isCompleted: false,
      ),
    );
  });

  ToDo tTodo = ToDo(
    title: 'test',
    id: '1',
    description: 'test',
    dueDate: DateTime.now(),
    isCompleted: false,
  );

  test('should return a todo when the repository is called on edit todo',
      () async {
    // arrange
    when(() => mockEditTodoRepository!.editTodo(any()))
        .thenAnswer((_) async => Right(tTodo));
    // act
    final result = await usecase!(EditParams(task: tTodo));
    // assert
    expect(result, Right(tTodo));
    verify(() => mockEditTodoRepository!.editTodo(tTodo));
  });
}
