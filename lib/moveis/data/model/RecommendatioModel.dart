// ignore_for_file: must_be_immutable

import 'package:clean2/moveis/domain/entities/recomandation.dart';

class MovieRecommendationModel extends MovieRecommendation {
  const MovieRecommendationModel({
     super.backdropPath,
    required super.id,
  });

  factory MovieRecommendationModel.fromJson(Map<String, dynamic> json) {
    return MovieRecommendationModel(
      backdropPath: json['backdrop_path']??"/y5Z0WesTjvn59jP6yo459eUsbli.jpg",
      id: json['id'],
    );
  }
}