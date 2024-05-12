import 'package:cost_prediction/feature/prediction/data/models/prediction_model.dart';
import 'package:cost_prediction/feature/prediction/data/models/result_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/prediction_use_case.dart';
part 'prediction_state.dart';

class PredictionCubit extends Cubit<PredictionStates> {
  final PredictionUseCase predictionUseCase;

  PredictionCubit(this.predictionUseCase) : super(PredictionInitialState());
  static PredictionCubit get(context) => BlocProvider.of(context);
  void predict(PredictionModel predictionModel) async {
    emit(PredictionLoadingState());
    final result = await predictionUseCase(predictionModel);

    result.fold(
      (l) => emit(
        PredictionFailedState(
          l.message,
        ),
      ),
      (r) => emit(
        PredictionSuccessState(
          r,
        ),
      ),
    );
  }
}
