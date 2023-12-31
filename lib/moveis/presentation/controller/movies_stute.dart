import 'package:clean2/core/utils/enum.dart';
import 'package:clean2/moveis/domain/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MoviesState extends Equatable {
  /// : Now Playing State
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  /// : popular Movies State
  final List<Movie> popularMovies;
  final RequestState popularMoviesState;
  final String popularMoviesMessage;

  /// : Top Rated Movies State
  final List<Movie> topRatedMovies;
  final RequestState topRatedMoviesState;
  final String topRatedMoviesMessage;

  const MoviesState({
    /// : Now Playing State
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.isLoading,
    this.nowPlayingMessage = "",

    /// : Top Rated Movies State
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.isLoading,
    this.popularMoviesMessage = "",

    /// : Top Rated Movies State
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.isLoading,
    this.topRatedMoviesMessage = "",
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,

    /// : popular Movies State
    List<Movie>? popularMovies,
    RequestState? popularMoviesState,
    String? popularMoviesMessage,
    //
    List<Movie>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedMoviesMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMessage: nowPlayingMessage ?? this.popularMoviesMessage,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      //
      popularMovies: popularMovies ?? this.popularMovies,
      popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
      popularMoviesState: popularMoviesState ?? this.popularMoviesState,
      //
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMoviesMessage: topRatedMoviesMessage ?? this.popularMoviesMessage,
      topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
    );
  }

  @override
  List<Object> get props => [
      nowPlayingMovies,
      nowPlayingState,
      nowPlayingMessage,
      popularMovies,
      popularMoviesState,
      popularMoviesMessage,
      topRatedMovies,
      topRatedMoviesState,
      topRatedMoviesMessage,
      ];
}
