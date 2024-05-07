import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_clean/features/todo/domain/usecases/create_todo.dart';

class MockCreateTodoRepository extends Mock implements TodoRepository {}

void main() {
  CreateTodo? usecase;
  MockCreateTodoRepository? mockCreateTodoRepository;

  setUp(() {
    mockCreateTodoRepository = MockCreateTodoRepository();
    usecase = CreateTodo(mockCreateTodoRepository!);
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

  test('should return a todo when the repository is called', () async {
    // arrange
    when(() => mockCreateTodoRepository!.createTodo(any()))
        .thenAnswer((_) async => Right(tTodo));
    // act
    final result = await usecase!(CreateParams(task: tTodo));
    // assert
    expect(result, Right(tTodo));
    verify(() => mockCreateTodoRepository!.createTodo(tTodo));
  });
}
