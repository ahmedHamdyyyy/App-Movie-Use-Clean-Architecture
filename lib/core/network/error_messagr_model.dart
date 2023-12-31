import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

class ErrorMessageModel extends Equatable {
  final int status_code;
  final bool success;
  final String status_message;

  ErrorMessageModel({
    required this.status_code,
    required this.success,
    required this.status_message,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      status_code: json["status_code"],
      success: json["success"],
      status_message: json["status_message"],
    );
  }

  @override
  List<Object> get props => [status_code, success, status_message];
}
