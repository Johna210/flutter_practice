import 'package:dartz/dartz.dart';
import 'package:trivia/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToUnsinedInt(String str) {
    try {
      int value = int.parse(str);
      if (value >= 0) {
        return Right(int.parse(str));
      } else {
        throw const FormatException();
      }
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  List<Object?> get props => [];
}
