import 'package:clean2/core/usecase/buseUseCase.dart';
import 'package:clean2/core/utils/enum.dart';

import 'package:clean2/moveis/domain/usecase/getNowPlaying.dart';
import 'package:clean2/moveis/domain/usecase/getPopularMovies.dart';
import 'package:clean2/moveis/domain/usecase/getTopRatedMovies.dart';
import 'package:clean2/moveis/presentation/controller/movies_event.dart';
import 'package:clean2/moveis/presentation/controller/movies_stute.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MovieBloc(
    this.getNowPlayingMoviesUseCase,
    this.getTopRatedMoviesUseCase,
    this.getPopularMoviesUseCase,
  ) : super(const MoviesState())
  {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase(const NoParameters());
      result.fold(
        (l) => emit(
          state.copyWith(
            nowPlayingState: RequestState.isError,
            nowPlayingMessage: l.messageError,
          ),
        ),
        (r) => emit(state.copyWith(
          nowPlayingMovies: r,
          nowPlayingState: RequestState.isLoaded,

        )),
      );

      //print(result);
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase(const NoParameters());
      result.fold(
        (l) => emit(
          state.copyWith(
            popularMoviesState: RequestState.isError,
            popularMoviesMessage: l.messageError,
          ),
        ),
        (r) => emit(
          state.copyWith(
            popularMovies: r,
            popularMoviesState: RequestState.isLoaded,
          ),
        ),
      );

      //print(result);
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase(const NoParameters());
      result.fold(
        (l) => emit(
          state.copyWith(
            topRatedMoviesState: RequestState.isError,
            topRatedMoviesMessage: l.messageError,
          ),
        ),
        (r) => emit(
          state.copyWith(
            topRatedMovies: r,
            topRatedMoviesState: RequestState.isLoaded,
          ),
        ),
      );

      //print(result);
    });
  }
}
