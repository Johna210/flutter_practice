import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:trivia/core/network/network_info.dart';

class MockInternetConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  NetworkInfoImpl? networkInfo;
  MockInternetConnectionChecker? mockInternetConnectionChecker;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfoImpl(mockInternetConnectionChecker!);
  });

  group('isConnected', () {
    test('should forward the call to InternetConnectionChecker.hasConnection',
        () async {
      // arrange
      final tHasConnectionFuture = Future.value(true);

      when(() => mockInternetConnectionChecker!.hasConnection)
          .thenAnswer((_) => tHasConnectionFuture);
      // act
      final result = networkInfo!.isConnected;
      // assert
      verify(() => mockInternetConnectionChecker!.hasConnection);
      expect(result, tHasConnectionFuture);
    });
  });
}
