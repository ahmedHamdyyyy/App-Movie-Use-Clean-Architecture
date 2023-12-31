import 'package:clean2/moveis/data/datasource/Movie_remote_datasource.dart';
import 'package:clean2/moveis/data/repository/movies_reposetores.dart';
import 'package:clean2/moveis/domain/repository/based_Movie_repository.dart';
import 'package:clean2/moveis/domain/usecase/getMovieDetalies.dart';
import 'package:clean2/moveis/domain/usecase/getNowPlaying.dart';
import 'package:clean2/moveis/domain/usecase/getPopularMovies.dart';
import 'package:clean2/moveis/domain/usecase/getRecommendationUseCase.dart';
import 'package:clean2/moveis/domain/usecase/getTopRatedMovies.dart';
import 'package:clean2/moveis/presentation/controller/movie_detailes_bloc.dart';
import 'package:clean2/moveis/presentation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///BLOCMovie
    sl.registerFactory(() => MovieBloc(sl(), sl(),sl(),),);
    sl.registerFactory(() => MovieDetailesBloc(sl(),sl()),);

    ///USE CASE
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailesUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    ///REPOSITORY
    sl.registerLazySingleton<BaseMoviesRepository>(() => MovieRepository(sl()));

    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
