import 'package:cost_prediction/core/errors/failure.dart';
import 'package:cost_prediction/feature/prediction/data/data_sources/prediction_data_source.dart';
import 'package:cost_prediction/feature/prediction/data/models/prediction_model.dart';
import 'package:cost_prediction/feature/prediction/data/models/result_model.dart';
import 'package:cost_prediction/feature/prediction/domain/repositories/base_prediction_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';

class PredictionRepository extends BasePredictionRepository{
  final BasePredicationRemoteDataSource basePredicationRemoteDataSource;

  PredictionRepository(this.basePredicationRemoteDataSource);

  @override
  Future<Either<Failure, ResultModel>> prediction(PredictionModel predictionModel) async{
    final result = await basePredicationRemoteDataSource.prediction(predictionModel);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}