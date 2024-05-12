import 'package:equatable/equatable.dart';

class ResultEntity extends Equatable {
  final double prediction;

   const ResultEntity({
    required this.prediction,
  });

  @override
  List<Object> get props => [prediction];
}