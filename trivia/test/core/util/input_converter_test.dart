import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/core/util/input_converter.dart';

void main() {
  InputConverter? inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('StringToUnsingedInt', () {
    test('should return an integer when the string represents an unsigned int',
        () async {
      // arrange
      const str = '123';
      // act
      final result = inputConverter!.stringToUnsinedInt(str);
      // assert
      expect(result, const Right(123));
    });

    test('should return a failure when the string is not an integer', () async {
      // arrange
      const str = 'abc';
      // act
      final result = inputConverter!.stringToUnsinedInt(str);
      // assert
      expect(result, Left(InvalidInputFailure()));
    });

    test('should return a failure when the string is a negative integer',
        () async {
      // arrange
      const str = '-123';
      // act
      final result = inputConverter!.stringToUnsinedInt(str);
      // assert
      expect(result, Left(InvalidInputFailure()));
    });
  });
}
