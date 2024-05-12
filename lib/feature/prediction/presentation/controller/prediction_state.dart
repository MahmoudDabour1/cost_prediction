part of 'prediction_cubit.dart';
sealed class PredictionStates {}

final class PredictionInitialState extends PredictionStates {}
final class PredictionLoadingState extends PredictionStates {}
final class PredictionSuccessState extends PredictionStates {
  final ResultModel resultModel;

  PredictionSuccessState(this.resultModel);
}
final class PredictionFailedState extends PredictionStates {
  final String message;

  PredictionFailedState(this.message);
}
