import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_list_clean/core/usecases/usecases.dart';
import 'package:todo_list_clean/features/todo/domain/entities/todo.dart';
import 'package:todo_list_clean/features/todo/domain/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_clean/features/todo/domain/usecases/get_all_todos.dart';

class MockGetAllTodosRepository extends Mock implements TodoRepository {}

void main() {
  GetAllTodos? usecase;
  MockGetAllTodosRepository? mockGetAllTodosRepository;

  setUp(() {
    mockGetAllTodosRepository = MockGetAllTodosRepository();
    usecase = GetAllTodos(mockGetAllTodosRepository!);
  });

  List<ToDo> tTodos = [
    ToDo(
      title: 'test',
      id: '1',
      description: 'test',
      dueDate: DateTime.now(),
      isCompleted: false,
    )
  ];

  test(
      'should return all todos when the get all todos is called on the repository',
      () async {
    // arrange
    when(() => mockGetAllTodosRepository!.getTodos())
        .thenAnswer((_) async => Right(tTodos));
    // act
    final result = await usecase!(NoParams());
    // assert
    expect(result, Right(tTodos));
    verify(() => mockGetAllTodosRepository!.getTodos());
  });
}
