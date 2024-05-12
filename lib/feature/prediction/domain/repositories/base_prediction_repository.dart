import 'package:cost_prediction/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/prediction_model.dart';
import '../../data/models/result_model.dart';

abstract class BasePredictionRepository {
  Future<Either<Failure,ResultModel>> prediction(PredictionModel predictionModel);
}