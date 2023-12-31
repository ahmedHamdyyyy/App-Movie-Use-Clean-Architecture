import 'package:clean2/core/error/exptions.dart';
import 'package:clean2/core/network/ApiConstance.dart';
import 'package:clean2/core/network/error_messagr_model.dart';
import 'package:clean2/moveis/data/model/MovieDetailesModel.dart';
import 'package:clean2/moveis/data/model/MoviseModel.dart';
import 'package:clean2/moveis/data/model/RecommendatioModel.dart';
import 'package:clean2/moveis/domain/entities/movie_Detailes.dart';
import 'package:clean2/moveis/domain/entities/recomandation.dart';
import 'package:clean2/moveis/domain/usecase/getMovieDetalies.dart';
import 'package:clean2/moveis/domain/usecase/getRecommendationUseCase.dart';
import 'package:dio/dio.dart';
abstract class BaseMovieRemoteDataSource
{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetails> getMoviesDetailes( MovieDetailesParameters parameters);
  Future<List<MovieRecommendation>> getRecommendation( RecommendationParameters parameters);

}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource           {


  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(
        ApiConstance.nawPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(
        ApiConstance.getPopularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(
        ApiConstance.getTopRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<MovieDetails>getMoviesDetailes(MovieDetailesParameters parameters) async{
    final response = await Dio().get(
        ApiConstance.movieDetailsPath(parameters.movieId));
    if (response.statusCode == 200) {
      return
        MovieDetailesModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieRecommendation>> getRecommendation(RecommendationParameters parameters) async {
    final response = await Dio().get(
        ApiConstance.movieRecommendationPath(parameters.id));
    if (response.statusCode == 200) {
       return List<MovieRecommendationModel>.from((response.data["results"] as List)
          .map((e) => MovieRecommendationModel.fromJson(e),
       ),);

    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
  }
}
}
