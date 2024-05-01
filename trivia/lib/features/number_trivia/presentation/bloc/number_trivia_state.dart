part of 'number_trivia_bloc.dart';

sealed class NumberTriviaState extends Equatable {
  const NumberTriviaState();

  @override
  List<Object> get props => [];
}

class NumberTriviaInitial extends NumberTriviaState {}

class NumberTriviaLoadingState extends NumberTriviaState {}

class NumberTriviaLoadedState extends NumberTriviaState {
  final NumberTrivia trivia;

  const NumberTriviaLoadedState({required this.trivia});

  @override
  List<Object> get props => [trivia];
}

class NumberTriviaErrorState extends NumberTriviaState {
  final String message;

  const NumberTriviaErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
