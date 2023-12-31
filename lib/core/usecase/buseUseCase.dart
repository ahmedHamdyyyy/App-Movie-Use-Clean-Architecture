import 'package:clean2/core/error/filuer.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T,Parameters>{
Future <Either<Failure,T>>call(Parameters parameters );
}
class NoParameters extends Equatable{
  const NoParameters();
  @override
  List<Object?> get props => throw UnimplementedError();
}