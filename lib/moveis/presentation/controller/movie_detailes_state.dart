part of 'movie_detailes_bloc.dart';

class MovieDetailesState extends Equatable {

  final MovieDetails? movieDetails;
  final RequestState requestStateDetailes;
  final String movieDetailesMessage;

//
  final List<MovieRecommendation> movieRecommendtion;
  final RequestState requestStateRecommendtion;
  final String movieRecommendtionMessage;

  const MovieDetailesState({
    this.movieDetails,
    this.requestStateDetailes = RequestState.isLoading,
    this.movieDetailesMessage = "",
    //
    this.movieRecommendtion = const[],
    this.movieRecommendtionMessage = "",
    this.requestStateRecommendtion = RequestState.isLoading,

  });


  MovieDetailesState copyWith({
    MovieDetails? movieDetails,
    RequestState? requestStateDetailes,
    String? movieDetailesMessage,
    //
    List<MovieRecommendation> ?movieRecommendtion,
    RequestState? requestStateRecommendtion,
    String? movieRecommendtionMessage,
  }) {
    return MovieDetailesState(
      movieRecommendtion: movieRecommendtion ?? this.movieRecommendtion,
      movieRecommendtionMessage: movieRecommendtionMessage ??
          this.movieRecommendtionMessage,
      requestStateRecommendtion: requestStateRecommendtion ??
          this.requestStateRecommendtion,
      //
      movieDetails: movieDetails ?? this.movieDetails,
      requestStateDetailes: requestStateDetailes ?? this.requestStateDetailes,
      movieDetailesMessage: movieDetailesMessage ?? this.movieDetailesMessage,
    );
  }

  @override
  List<Object?> get props =>
      [
        movieDetails,
        requestStateDetailes,
        movieDetailesMessage,
        movieRecommendtion,
        requestStateRecommendtion,
        movieRecommendtionMessage,
      ];
}
