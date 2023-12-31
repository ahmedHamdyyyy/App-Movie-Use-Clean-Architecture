import 'package:clean2/moveis/domain/entities/genres.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';

// ignore: must_be_immutable
class MovieDetailesModel extends MovieDetails {
  MovieDetailesModel(
      {required super.id,
      required super.backdropPath,
      required super.genres,
      required super.title,
      required super.overview,
      required super.voteAaverage,
      required super.runtime,
      required super.releaseDate});

  factory MovieDetailesModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailesModel(
        id: json["id"],
        backdropPath: json["backdrop_path"],
        releaseDate: json["release_date"],
        genres: List<Genres>.from(json["genres"].map((x)=>Genres.fromJson(x))),
        title: json["title"],
        overview: json["overview"],

        runtime: json["runtime"],

        voteAaverage: json["vote_average"].toDouble()

    );
  }
}
