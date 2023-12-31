import 'package:clean2/core/error/filuer.dart';
import 'package:clean2/core/usecase/buseUseCase.dart';
import 'package:clean2/moveis/domain/entities/recomandation.dart';
import 'package:clean2/moveis/domain/repository/based_Movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRecommendationUseCase extends BaseUseCase<List<MovieRecommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;
  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieRecommendation>>> call(RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

  


class RecommendationParameters extends Equatable {
  final int id;
  const RecommendationParameters(this.id);

  @override
  List<Object> get props => [id];
}
