import 'package:dartz/dartz.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:trivia/core/usecases/usecase.dart';
import 'package:trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia? usecase;
  MockNumberTriviaRepository? mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository!);
  });

  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'shoud get trivia from the repository',
    () async {
      //arrange
      when(() => mockNumberTriviaRepository!.getRandomNumberTrivia())
          .thenAnswer((_) async => const Right(tNumberTrivia));

      final result = await usecase!(NoParams());
      //assert
      expect(result, const Right(tNumberTrivia));
      verify(() => mockNumberTriviaRepository!.getRandomNumberTrivia());
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
