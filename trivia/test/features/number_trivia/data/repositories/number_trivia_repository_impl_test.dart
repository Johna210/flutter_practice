import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/core/platform/network_info.dart';
import 'package:trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:trivia/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:trivia/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:trivia/features/number_trivia/domain/entities/number_trivia.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  NumberTriviaRepositoryImpl? repository;
  MockRemoteDataSource? mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo? mockNetworkInfo;

  setUp(
    () => {
      mockRemoteDataSource = MockRemoteDataSource(),
      mockLocalDataSource = MockLocalDataSource(),
      mockNetworkInfo = MockNetworkInfo(),
      repository = NumberTriviaRepositoryImpl(
        remoteDataSource: mockRemoteDataSource!,
        localDataSource: mockLocalDataSource,
        networkInfo: mockNetworkInfo!,
      ),
    },
  );

  group('get concrete number trivia', () {
    const tNumber = 1;
    const tNumberTriviaModel =
        NumberTriviaModel(number: tNumber, text: 'test trivia');
    const NumberTrivia tNumberTrivia = tNumberTriviaModel;

    test('should check if the device is online', () async {
      // arrange
      when(() => mockNetworkInfo!.isConnected)
          .thenAnswer((invocation) async => true);
      // act
      repository!.getConcreteNumberTrivia(tNumber);
      // assert
      verify(() => mockNetworkInfo!.isConnected);
    });

    group('when device is online', () {
      setUp(() {
        when(() => mockNetworkInfo!.isConnected)
            .thenAnswer((invocation) async => true);
      });

      test(
          'should return remote data when the call to remote data source is successful',
          () async {
        // arrange
        when(() => mockRemoteDataSource!.getConcreteNumberTrivia(tNumber))
            .thenAnswer((invocation) async => tNumberTriviaModel);
        // act
        final result = await repository!.getConcreteNumberTrivia(tNumber);
        // assert
        verify(() => mockRemoteDataSource!.getConcreteNumberTrivia(tNumber));
        expect(result, equals(const Right(tNumberTrivia)));
      });
    });

    group('when device is offline', () {
      setUp(() {
        when(() => mockNetworkInfo!.isConnected)
            .thenAnswer((invocation) async => false);
      });
    });
  });
}
