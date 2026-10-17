import 'package:equatable/equatable.dart';

abstract class CalculatorEvent extends Equatable {
  const CalculatorEvent();

  @override
  List<Object?> get props => [];
}

class NumberPressed extends CalculatorEvent {
  final String symbol;

  const NumberPressed(this.symbol);

  @override
  List<Object?> get props => [symbol];
}

class OperationPressed extends CalculatorEvent {
  final String operation;

  const OperationPressed(this.operation);

  @override
  List<Object?> get props => [operation];
}

class CalculateResult extends CalculatorEvent {
  const CalculateResult();
}

class ClearCalculator extends CalculatorEvent {
  const ClearCalculator();
}

class DeleteLastChar extends CalculatorEvent {
  const DeleteLastChar();
}
