import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:trivia/core/error/failures.dart';
import 'package:trivia/core/usecases/usecase.dart';

import 'package:trivia/core/util/input_converter.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberTrivia concrete;
  final GetRandomNumberTrivia random;
  final InputConverter input;

  NumberTriviaBloc({
    required this.concrete,
    required this.random,
    required this.input,
  }) : super(NumberTriviaInitial()) {
    on<GetTriviaForConcreteNumber>((event, emit) async {
      final inputEither = input.stringToUnsinedInt(event.numberString);

      if (inputEither.isLeft()) {
        emit(
          const NumberTriviaErrorState(message: INVALID_INPUT_FAILURE_MESSAGE),
        );
      } else {
        emit(NumberTriviaLoadingState());
        final integer = inputEither.getOrElse(() => 0);
        final failureOrTrivia = await concrete(Params(number: integer));

        _eitherLoadedOrErrorState(failureOrTrivia, emit);
      }
    });
    on<GetTriviaForRandomNumber>(
      ((event, emit) async {
        emit(NumberTriviaLoadingState());
        final failureOrTrivia = await random(NoParams());
        _eitherLoadedOrErrorState(failureOrTrivia, emit);
      }),
    );
  }

  void _eitherLoadedOrErrorState(Either<Failure, NumberTrivia> failureOrTrivia,
      Emitter<NumberTriviaState> emit) {
    failureOrTrivia.fold(
      (failure) {
        emit(
          NumberTriviaErrorState(message: _mapFailureToMessage(failure)),
        );
      },
      (trivia) {
        emit(NumberTriviaLoadedState(trivia: trivia));
      },
    );
  }

  NumberTriviaState get initialState => NumberTriviaInitial();

  String _mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return SERVER_FAILURE_MESSAGE;
    } else if (failure is CacheFailure) {
      return CACHE_FAILURE_MESSAGE;
    } else {
      return 'Unexpected error';
    }
  }
}
