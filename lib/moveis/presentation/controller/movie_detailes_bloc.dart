
import 'package:clean2/core/utils/enum.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';
import 'package:clean2/moveis/domain/entities/recomandation.dart';
import 'package:clean2/moveis/domain/usecase/getMovieDetalies.dart';
import 'package:clean2/moveis/domain/usecase/getRecommendationUseCase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'movie_detailes_event.dart';
part 'movie_detailes_state.dart';

class MovieDetailesBloc extends Bloc<MovieDetailesEvent, MovieDetailesState> {
  final GetMovieDetailesUseCase getMovieDetailesUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  MovieDetailesBloc(this.getMovieDetailesUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailesState()) {
    on<GetMovieDetailesEvent>((event, emit) async {
      final result = await getMovieDetailesUseCase(
          MovieDetailesParameters(movieId: event.id));
      result.fold(
        (l) => emit(
          state.copyWith(
            requestStateDetailes: RequestState.isError,
            movieDetailesMessage: l.messageError,
          ),
        ),
        (r) => emit(state.copyWith(
          movieDetails: r,
          requestStateDetailes: RequestState.isLoaded,
        )),
      );
    }

    );

    on<GetMovieRecomendEvent>((event, emit) async {
      final result = await getRecommendationUseCase(
          RecommendationParameters(event.id));
      result.fold(
            (l) => emit(
          state.copyWith(
            requestStateRecommendtion: RequestState.isError,
            movieRecommendtionMessage: l.messageError,
          ),
        ),
            (r) => emit(state.copyWith(
          movieRecommendtion: r,
          requestStateRecommendtion: RequestState.isLoaded,
        )),
      );


    }



    );
  }
}
