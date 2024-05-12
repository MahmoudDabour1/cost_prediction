import 'package:cost_prediction/feature/prediction/domain/entities/result_entity.dart';

class ResultModel extends ResultEntity{
  const ResultModel({required super.prediction});

  factory ResultModel.fromJson(Map<String, dynamic> json) {
    return ResultModel( prediction: json["prediction"]??0);
  }

  Map<String, dynamic> toJson() {
    return {
      'prediction' : prediction,
    };
  }
}