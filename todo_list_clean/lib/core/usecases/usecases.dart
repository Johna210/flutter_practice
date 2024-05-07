import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list_clean/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetParams extends Equatable {
  final String id;

  const GetParams({required this.id});

  @override
  List<Object?> get props => [id];
}
