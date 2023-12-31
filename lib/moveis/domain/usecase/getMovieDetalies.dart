import 'package:clean2/core/error/filuer.dart';
import 'package:clean2/core/usecase/buseUseCase.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';
import 'package:clean2/moveis/domain/repository/based_Movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMovieDetailesUseCase extends BaseUseCase<MovieDetails, MovieDetailesParameters> {


  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(MovieDetailesParameters parameters) async {
    return await baseMoviesRepository.getMovieDetailes(parameters);
  }

}

class MovieDetailesParameters extends Equatable {
  final int movieId;

  const MovieDetailesParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}