import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdrop_path;
  final List<int> genre_ids;
  final String overview;
  final double vote_average;
  final String release_date;


   Movie({
    required this.id,
    required this.title,
    required this.backdrop_path,
    required this.genre_ids,
    required this.overview,
    required this.vote_average,
    required this.release_date,
  });

  @override
  List<Object> get props => [
        id,
        title,
        backdrop_path,
        genre_ids,
        overview,
        vote_average,
        release_date,
      ];


}
