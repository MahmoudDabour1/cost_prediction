import 'package:cost_prediction/core/errors/failure.dart';
import 'package:cost_prediction/core/usecase/base_usecase.dart';
import 'package:cost_prediction/feature/prediction/domain/repositories/base_prediction_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/prediction_model.dart';
import '../../data/models/result_model.dart';

class PredictionUseCase
    extends BaseUseCase<ResultModel, PredictionModel> {
  final BasePredictionRepository basePredictionRepository;

  PredictionUseCase(this.basePredictionRepository);

  @override
  Future<Either<Failure, ResultModel>> call(PredictionModel parameters) async{
    return await basePredictionRepository.prediction(parameters);
  }
}

class PredictParameters extends Equatable {
  final String status;
  final String gender;
  final int children;
  final String education;
  final String work;
  final String placeCode1;
  final String placeCode2;
  final String order;
  final String department;
  final String brand;
  final int additionalFeaturesNumber;
  final String promotionName;
  final String storeKind;
  final double storeSales;
  final double netWeight;
  final double packageWeight;
  final String isRecyclable;
  final String yearlyIncome;
  final double storeArea;
  final double frozenArea;

  const PredictParameters({
    required this.status,
    required this.gender,
    required this.children,
    required this.education,
    required this.work,
    required this.placeCode1,
    required this.placeCode2,
    required this.order,
    required this.department,
    required this.brand,
    required this.additionalFeaturesNumber,
    required this.promotionName,
    required this.storeKind,
    required this.storeSales,
    required this.netWeight,
    required this.packageWeight,
    required this.isRecyclable,
    required this.yearlyIncome,
    required this.storeArea,
    required this.frozenArea,
  });

  @override
  List<Object> get props => [
        status,
        gender,
        children,
        education,
        work,
        placeCode1,
        placeCode2,
        order,
        department,
        brand,
        additionalFeaturesNumber,
        promotionName,
        storeKind,
        storeSales,
        netWeight,
        packageWeight,
        isRecyclable,
        yearlyIncome,
        storeArea,
        frozenArea,
      ];
}
