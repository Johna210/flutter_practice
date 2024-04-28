// ignore_for_file: constant_identifier_names
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:trivia/core/error/exceptions.dart';
import 'package:trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaLocalDataSource {
  /// Get the last cached [NumberTriviaModel] which was gotten last time the
  /// user had an internet connectoion
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<NumberTrivia> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel trivia);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<NumberTrivia> getLastNumberTrivia() {
    final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NumberTriviaModel.fromJson(jsonDecode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheNumberTrivia(NumberTriviaModel trivia) async {
    await sharedPreferences.setString(
      CACHED_NUMBER_TRIVIA,
      jsonEncode(
        trivia.toJson(),
      ),
    );
  }
}
