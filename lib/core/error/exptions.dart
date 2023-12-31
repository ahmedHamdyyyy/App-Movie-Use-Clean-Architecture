import 'package:clean2/core/network/error_messagr_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({
    required this.errorMessageModel,
  });
}
