import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/core/util/input_converter.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:trivia/features/number_trivia/presentation/bloc/bloc.dart';

class MockGetConcreteNumberTrivia extends Mock
    implements GetConcreteNumberTrivia {}

class MockGetRandomNumberTrivia extends Mock implements GetRandomNumberTrivia {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  NumberTriviaBloc? bloc;
  MockGetConcreteNumberTrivia? getConcreteNumberTrivia;
  MockGetRandomNumberTrivia? getRandomNumberTrivia;
  MockInputConverter? inputConverter;

  setUp(() {
    getRandomNumberTrivia = MockGetRandomNumberTrivia();
    getConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    inputConverter = MockInputConverter();

    bloc = NumberTriviaBloc(
      concrete: getConcreteNumberTrivia!,
      random: getRandomNumberTrivia!,
      input: inputConverter!,
    );
  });

  test('initialState should be empty', () {
    // assert
    expect(bloc!.initialState, NumberTriviaInitial());
  });

  group('GetTriviaForConcreteNumber', () {
    const tNumberString = '1';
    const tNumberParsed = 1;
    const tNumberTrivia =
        NumberTrivia(text: 'test text', number: tNumberParsed);

    test(
      'should call the input converter to validate and convert the input',
      () async {
        // arrange
        when(() => inputConverter!.stringToUnsinedInt(any()))
            .thenReturn(const Right(tNumberParsed));
        // act
        bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
        await untilCalled(() => inputConverter!.stringToUnsinedInt(any()));
        // assert
        verify(() => inputConverter!.stringToUnsinedInt(tNumberString));
      },
    );

    test(
      'should emit [Error] when the input is invalid',
      () async {
        // arrange
        when(() => inputConverter!.stringToUnsinedInt(any()))
            .thenReturn(Left(InvalidInputFailure()));
        // assert Later
        final expected = [
          const NumberTriviaErrorState(message: INVALID_INPUT_FAILURE_MESSAGE)
        ];
        expectLater(bloc!.stream, emitsInOrder(expected));
        // act
        bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
      },
    );
  });
}
