import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_clean/features/todo/domain/usecases/remove_todo.dart';

class MockRemoveTodo extends Mock implements TodoRepository {}

void main() {
  RemoveTodo? usecase;
  MockRemoveTodo? mockRemoveTodo;

  setUp(() {
    mockRemoveTodo = MockRemoveTodo();
    usecase = RemoveTodo(mockRemoveTodo!);
  });

  ToDo tTodo = ToDo(
    title: 'test',
    id: '1',
    description: 'test',
    dueDate: DateTime.now(),
    isCompleted: false,
  );

  test('should return todo when the remove todo is called on the repository',
      () async {
    // arrange
    when(() => mockRemoveTodo!.removeTodo(any()))
        .thenAnswer((_) async => Right(tTodo));
    // act
    final result = await usecase!(const GetParams(id: '1'));
    // assert
    expect(result, Right(tTodo));
    verify(() => mockRemoveTodo!.removeTodo('1'));
  });
}
