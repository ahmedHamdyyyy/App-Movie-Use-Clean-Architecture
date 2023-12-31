part of 'movie_detailes_bloc.dart';

abstract class MovieDetailesEvent extends Equatable {
  const MovieDetailesEvent();
}

class GetMovieDetailesEvent extends MovieDetailesEvent {
  final int id;

  const GetMovieDetailesEvent(this.id);

  @override
  List<Object> get props => [id];

}

class GetMovieRecomendEvent extends MovieDetailesEvent {
  final int id;

 const GetMovieRecomendEvent(this.id);

  @override
  List<Object> get props => [id];
}
