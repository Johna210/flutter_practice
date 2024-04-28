import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trivia/core/error/exceptions.dart';
import 'package:trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:trivia/features/number_trivia/data/models/number_trivia_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  NumberTriviaLocalDataSourceImpl? dataSource;
  MockSharedPreferences? mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = NumberTriviaLocalDataSourceImpl(
        sharedPreferences: mockSharedPreferences!);
  });

  group('getLastNumberTrivia', () {
    final tNumberTrivia =
        NumberTriviaModel.fromJson(jsonDecode(fixture('trivia_cached.json')));

    test(
        'should return NumberTrivia from shared preferences when there is one that is cached',
        () async {
      // arrange
      when(() => mockSharedPreferences!.getString(any()))
          .thenReturn(fixture('trivia_cached.json'));
      // act
      final result = await dataSource!.getLastNumberTrivia();
      // assert
      verify(() => mockSharedPreferences!.getString(CACHED_NUMBER_TRIVIA));
      expect(result, tNumberTrivia);
    });

    test('should throw a CacheException when there is no cached value',
        () async {
      // arrange
      when(() => mockSharedPreferences!.getString(any())).thenReturn(null);
      // act
      final call = dataSource!.getLastNumberTrivia;
      // assert
      expect(() => call(), throwsA(const TypeMatcher<CacheException>()));
    });
  });

  group('cacheNumberTrivia', () {
    const tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test text');

    test('should call SharedPreferences to cache the data', () async {
      // Arrange
      when(() => mockSharedPreferences!.setString(any(), any()))
          .thenAnswer((_) async => true);
      // act
      await dataSource!.cacheNumberTrivia(tNumberTriviaModel);
      // assert
      final expectedJson = jsonEncode(tNumberTriviaModel.toJson());
      verify(() =>
          mockSharedPreferences!.setString(CACHED_NUMBER_TRIVIA, expectedJson));
    });
  });
}
