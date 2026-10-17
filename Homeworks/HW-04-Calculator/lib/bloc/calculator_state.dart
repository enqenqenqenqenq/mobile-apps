import 'package:equatable/equatable.dart';

class CalculatorState extends Equatable {
  final String display;
  final String equation;
  final double? firstNumber;
  final String? operation;
  final bool shouldResetDisplay;

  const CalculatorState({
    this.display = '0',
    this.equation = '',
    this.firstNumber,
    this.operation,
    this.shouldResetDisplay = false,
  });

  CalculatorState copyWith({
    String? display,
    String? equation,
    double? firstNumber,
    String? operation,
    bool? shouldResetDisplay,
    bool clearFirstNumber = false,
    bool clearOperation = false,
  }) {
    return CalculatorState(
      display: display ?? this.display,
      equation: equation ?? this.equation,
      firstNumber: clearFirstNumber ? null : (firstNumber ?? this.firstNumber),
      operation: clearOperation ? null : (operation ?? this.operation),
      shouldResetDisplay: shouldResetDisplay ?? this.shouldResetDisplay,
    );
  }

  @override
  List<Object?> get props => [
        display,
        equation,
        firstNumber,
        operation,
        shouldResetDisplay,
      ];
}
