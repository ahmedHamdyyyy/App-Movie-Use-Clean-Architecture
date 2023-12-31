import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String messageError;

  const Failure({required this.messageError});

  @override
  List<Object> get props => [messageError];
}
class ServerFailure extends Failure{
 const  ServerFailure({required super.messageError});
}