// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class MovieRecommendation extends Equatable {
  final String? backdropPath;
  final int id;

  const MovieRecommendation({
    this.backdropPath,
    required this.id,
  });
  @override
  List<Object?> get props => [
        backdropPath,
        id,
      ];
}
