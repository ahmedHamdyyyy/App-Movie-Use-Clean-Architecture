// ignore_for_file: must_be_immutable

import 'package:clean2/moveis/domain/entities/genres.dart';
import 'package:equatable/equatable.dart';

class MovieDetails extends Equatable {
  int id;
  String backdropPath;
  List<Genres> genres;
  String title;
  String overview;
  int runtime;
  double voteAaverage;
  String releaseDate;

  List<Object?> get props => [
    id,
    backdropPath,
    genres,
    title,
    overview,
    runtime,
    voteAaverage,
    releaseDate
  ];

  MovieDetails(
      {required this.id,
        required this.backdropPath,
        required this.genres,
        required this.title,
        required this.overview,
        required this.voteAaverage,
        required this.runtime,required this.releaseDate, });
}