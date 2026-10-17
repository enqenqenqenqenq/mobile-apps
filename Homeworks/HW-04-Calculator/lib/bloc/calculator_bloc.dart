import 'package:flutter_bloc/flutter_bloc.dart';
import 'calculator_event.dart';
import 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculatorState()) {
    on<NumberPressed>(_onNumberPressed);
    on<OperationPressed>(_onOperationPressed);
    on<CalculateResult>(_onCalculateResult);
    on<ClearCalculator>(_onClearCalculator);
    on<DeleteLastChar>(_onDeleteLastChar);
  }

  void _onNumberPressed(NumberPressed event, Emitter<CalculatorState> emit) {
    final symbol = event.symbol;

    if (state.shouldResetDisplay || state.display == 'Ошибка') {
      if (symbol == '.') {
        emit(state.copyWith(
          display: '0.',
          shouldResetDisplay: false,
        ));
      } else {
        emit(state.copyWith(
          display: symbol,
          shouldResetDisplay: false,
        ));
      }
      return;
    }

    if (symbol == '.') {
      if (!state.display.contains('.')) {
        emit(state.copyWith(display: '${state.display}.'));
      }
      return;
    }

    if (state.display == '0') {
      emit(state.copyWith(display: symbol));
    } else {
      emit(state.copyWith(display: '${state.display}$symbol'));
    }
  }

  void _onOperationPressed(
      OperationPressed event, Emitter<CalculatorState> emit) {
    if (state.display == 'Ошибка') return;

    final currentNum = double.tryParse(state.display) ?? 0;

    if (state.firstNumber != null &&
        state.operation != null &&
        !state.shouldResetDisplay) {
      final intermediateResult =
          _calculate(state.firstNumber!, currentNum, state.operation!);
      if (intermediateResult == null) {
        emit(state.copyWith(
          display: 'Ошибка',
          equation: '',
          clearFirstNumber: true,
          clearOperation: true,
          shouldResetDisplay: true,
        ));
        return;
      }
      emit(state.copyWith(
        display: _formatResult(intermediateResult),
        equation: '${_formatResult(intermediateResult)} ${event.operation}',
        firstNumber: intermediateResult,
        operation: event.operation,
        shouldResetDisplay: true,
      ));
    } else {
      emit(state.copyWith(
        firstNumber: currentNum,
        operation: event.operation,
        equation: '${_formatResult(currentNum)} ${event.operation}',
        shouldResetDisplay: true,
      ));
    }
  }

  void _onCalculateResult(CalculateResult event, Emitter<CalculatorState> emit) {
    if (state.firstNumber == null || state.operation == null) return;
    if (state.display == 'Ошибка') return;

    final secondNum = double.tryParse(state.display) ?? 0;
    final result = _calculate(state.firstNumber!, secondNum, state.operation!);

    if (result == null) {
      emit(state.copyWith(
        display: 'Ошибка',
        equation:
            '${_formatResult(state.firstNumber!)} ${state.operation} ${_formatResult(secondNum)} =',
        clearFirstNumber: true,
        clearOperation: true,
        shouldResetDisplay: true,
      ));
    } else {
      emit(state.copyWith(
        display: _formatResult(result),
        equation:
            '${_formatResult(state.firstNumber!)} ${state.operation} ${_formatResult(secondNum)} =',
        clearFirstNumber: true,
        clearOperation: true,
        shouldResetDisplay: true,
      ));
    }
  }

  void _onClearCalculator(ClearCalculator event, Emitter<CalculatorState> emit) {
    emit(const CalculatorState());
  }

  void _onDeleteLastChar(DeleteLastChar event, Emitter<CalculatorState> emit) {
    if (state.shouldResetDisplay || state.display == 'Ошибка') return;

    if (state.display.length > 1) {
      emit(state.copyWith(
        display: state.display.substring(0, state.display.length - 1),
      ));
    } else {
      emit(state.copyWith(display: '0'));
    }
  }

  double? _calculate(double a, double b, String op) {
    switch (op) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '×':
        return a * b;
      case '÷':
        if (b == 0) return null;
        return a / b;
      default:
        return b;
    }
  }

  String _formatResult(double value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    }
    return value.toStringAsFixed(4).replaceAll(RegExp(r'0+$'), '').replaceAll(RegExp(r'\.$'), '');
  }
}
