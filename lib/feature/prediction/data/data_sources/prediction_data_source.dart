import 'package:cost_prediction/core/network/api_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_helper.dart';
import '../../../../core/network/error_message_model.dart';
import '../models/prediction_model.dart';
import '../models/result_model.dart';

abstract class BasePredicationRemoteDataSource {
  Future<ResultModel> prediction(PredictionModel predictionModel);
}

final dio = DioHelper();

class PredictionRemoteDataSource extends BasePredicationRemoteDataSource {
  @override
  Future<ResultModel> prediction(PredictionModel predictionModel) async {
    final response = await dio.postData(
        url: ApiConstance.baseUrl, data: predictionModel.toJson());
    if (response.statusCode == 200) {
      return ResultModel.fromJson(response.data);
    } else {
      print(response.data);
      print(response.statusCode);
      // return ResultModel.fromJson(response.data["error"]);
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
