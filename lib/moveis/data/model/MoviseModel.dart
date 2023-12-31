import 'package:clean2/moveis/domain/entities/movie.dart';

class MovieModel extends Movie {
   MovieModel({
    required super.id,
    required super.title,
    required super.backdrop_path,
    required super.genre_ids,
    required super.overview,
    required super.vote_average,
    required super.release_date,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        backdrop_path: json["backdrop_path"],
        genre_ids: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        vote_average: json["vote_average"].toDouble(),
        release_date: json["release_date"],
      );
}
