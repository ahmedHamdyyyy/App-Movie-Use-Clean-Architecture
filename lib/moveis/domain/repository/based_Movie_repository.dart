import 'package:clean2/core/error/filuer.dart';
import 'package:clean2/moveis/domain/entities/movie.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';
import 'package:clean2/moveis/domain/entities/recomandation.dart';
import 'package:clean2/moveis/domain/usecase/getMovieDetalies.dart';
import 'package:clean2/moveis/domain/usecase/getRecommendationUseCase.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMoviesRepository{
    Future<Either<Failure,List<Movie>>> getNowPlayingMovies();
    Future<Either<Failure,List<Movie>>> getPopularMovies();
    Future<Either<Failure,List<Movie>>> getTopRatedMovies();
    Future<Either<Failure,MovieDetails>> getMovieDetailes( MovieDetailesParameters parameters);
    Future<Either<Failure,List<MovieRecommendation>>> getRecommendation( RecommendationParameters parameters);

}