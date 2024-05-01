import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/core/error/failures.dart';
import 'package:trivia/core/usecases/usecase.dart';
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
  MockGetConcreteNumberTrivia? mockGetConcreteNumberTrivia;
  MockGetRandomNumberTrivia? mockGetRandomNumberTrivia;
  MockInputConverter? inputConverter;

  setUp(() {
    mockGetRandomNumberTrivia = MockGetRandomNumberTrivia();
    mockGetConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    inputConverter = MockInputConverter();
    registerFallbackValue(const Params(number: 1));
    registerFallbackValue(NoParams());

    bloc = NumberTriviaBloc(
      concrete: mockGetConcreteNumberTrivia!,
      random: mockGetRandomNumberTrivia!,
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

    void setUpInputConverterSuccess() =>
        when(() => inputConverter!.stringToUnsinedInt(any()))
            .thenReturn(const Right(tNumberParsed));

    void setUpMockConcreteNumberSuccess() =>
        when(() => mockGetConcreteNumberTrivia!(any()))
            .thenAnswer((_) async => const Right(tNumberTrivia));

    test(
      'should call the input converter to validate and convert the input',
      () async {
        // arrange
        setUpInputConverterSuccess();
        setUpMockConcreteNumberSuccess();
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

    test('should return data from the concrete usecase', () async {
      // arrange
      setUpInputConverterSuccess();
      setUpMockConcreteNumberSuccess();
      // act
      bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
      await untilCalled(() => mockGetConcreteNumberTrivia!(any()));
      // assert
      verify(() =>
          mockGetConcreteNumberTrivia!(const Params(number: tNumberParsed)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async {
      // arrange
      setUpInputConverterSuccess();
      setUpMockConcreteNumberSuccess();

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaLoadedState(trivia: tNumberTrivia),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      setUpInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia!(any()))
          .thenAnswer((_) async => Left(ServerFailure()));

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaErrorState(message: SERVER_FAILURE_MESSAGE),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
    });

    test(
        'should emit [Loading, Error] a correct error message when getting data fails',
        () async {
      // arrange
      setUpInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia!(any()))
          .thenAnswer((_) async => Left(CacheFailure()));

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaErrorState(message: CACHE_FAILURE_MESSAGE),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(const GetTriviaForConcreteNumber(tNumberString));
    });
  });

  group('GetTriviaForRandomNumber', () {
    const tNumberTrivia = NumberTrivia(text: 'test text', number: 1);

    test(
      'should get data from the random usecase',
      () async {
        // arrange
        when(() => mockGetRandomNumberTrivia!(NoParams()))
            .thenAnswer((_) async => const Right(tNumberTrivia));
        // act
        bloc!.add(GetTriviaForRandomNumber());
        await untilCalled(() => mockGetRandomNumberTrivia!(NoParams()));
        // assert
        verify(() => mockGetRandomNumberTrivia!(NoParams()));
      },
    );

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async {
      // arrange
      when(() => mockGetRandomNumberTrivia!(NoParams()))
          .thenAnswer((_) async => const Right(tNumberTrivia));

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaLoadedState(trivia: tNumberTrivia),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(GetTriviaForRandomNumber());
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      when(() => mockGetRandomNumberTrivia!(NoParams()))
          .thenAnswer((_) async => Left(ServerFailure()));

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaErrorState(message: SERVER_FAILURE_MESSAGE),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(GetTriviaForRandomNumber());
    });

    test(
        'should emit [Loading, Error] a correct error message when getting data fails',
        () async {
      // arrange
      when(() => mockGetRandomNumberTrivia!(any()))
          .thenAnswer((_) async => Left(CacheFailure()));

      // assert Later
      final expected = [
        NumberTriviaLoadingState(),
        const NumberTriviaErrorState(message: CACHE_FAILURE_MESSAGE),
      ];
      expectLater(bloc!.stream, emitsInOrder(expected));
      // act
      bloc!.add(GetTriviaForRandomNumber());
    });
  });
}
