import 'package:clean2/core/error/exptions.dart';
import 'package:clean2/core/error/filuer.dart';
import 'package:clean2/moveis/data/datasource/Movie_remote_datasource.dart';
import 'package:clean2/moveis/domain/entities/movie.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';
import 'package:clean2/moveis/domain/entities/recomandation.dart';
import 'package:clean2/moveis/domain/repository/based_Movie_repository.dart';
import 'package:clean2/moveis/domain/usecase/getMovieDetalies.dart';
import 'package:clean2/moveis/domain/usecase/getRecommendationUseCase.dart';
import 'package:dartz/dartz.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (ffailure) {
      return Left(ServerFailure(
          messageError: ffailure.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (ffailure) {
      return Left(ServerFailure(
          messageError: ffailure.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (ffailure) {
      return Left(ServerFailure(
          messageError: ffailure.errorMessageModel.status_message),);
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetailes(
      MovieDetailesParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMoviesDetailes(
        parameters);
    try {
      return Right(result);
    } on ServerException catch (ffailure) {
      return Left(ServerFailure(
          messageError: ffailure.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<MovieRecommendation>>> getRecommendation(RecommendationParameters parameters) async{
    final result = await baseMovieRemoteDataSource.getRecommendation(parameters);
    try {
      return Right(result);
    } on ServerException catch (ffailure) {
      return Left(ServerFailure(
          messageError: ffailure.errorMessageModel.status_message));
    }
  }
}
