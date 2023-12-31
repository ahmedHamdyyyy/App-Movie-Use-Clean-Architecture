import 'package:clean2/core/error/filuer.dart';
import 'package:clean2/core/usecase/buseUseCase.dart';
import 'package:clean2/moveis/domain/entities/movie.dart';
import 'package:clean2/moveis/domain/repository/based_Movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase <List<Movie>,NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure,List<Movie>>> call(NoParameters parameters)async{

    return await baseMoviesRepository.getNowPlayingMovies();
  }
}