import 'package:dartz/dartz.dart';
import 'package:ddd_notes/domain/core/failures.dart';
import 'package:kt_dart/kt.dart';

/// Convention in if else statements in the if statements
/// return success right values and
/// else statements for left Value Failures

// Notes value validators
Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

// KtList is a read-only list of elements.
// It is immutable because it doesn't offer
// mutation methods such as remove or add.
Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

// Auth Value Validators

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return Right(input);
  } else {
    return Left(ValueFailure.shortPassword(failedValue: input));
  }
}
