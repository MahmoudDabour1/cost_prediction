import 'package:cost_prediction/feature/prediction/data/data_sources/prediction_data_source.dart';
import 'package:cost_prediction/feature/prediction/data/repositories/prediction_repository.dart';
import 'package:cost_prediction/feature/prediction/domain/repositories/base_prediction_repository.dart';
import 'package:cost_prediction/feature/prediction/domain/use_cases/prediction_use_case.dart';
import 'package:cost_prediction/feature/prediction/presentation/controller/prediction_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerFactory<PredictionCubit>(() => PredictionCubit(sl()));
    sl.registerLazySingleton(() => PredictionUseCase(sl()));
    sl.registerLazySingleton<BasePredictionRepository>(
        () => PredictionRepository(sl()));
    sl.registerLazySingleton<BasePredicationRemoteDataSource>(
        () => PredictionRemoteDataSource());
  }
}
