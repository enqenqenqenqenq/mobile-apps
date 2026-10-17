import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/calculator_bloc.dart';
import 'bloc/calculator_event.dart';
import 'bloc/calculator_state.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Калькулятор на BLoC',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF17171C),
      ),
      home: BlocProvider(
        create: (_) => CalculatorBloc(),
        child: const CalculatorScreen(),
      ),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Калькулятор на BLoC'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<CalculatorBloc, CalculatorState>(
                builder: (context, state) {
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          state.equation,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.white54,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            state.display,
                            style: const TextStyle(
                              fontSize: 54,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(color: Colors.white12, height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildButtonRow(
                    context,
                    [
                      _CalcButtonData(
                        label: 'C',
                        color: const Color(0xFFE53935),
                        textColor: Colors.white,
                        event: const ClearCalculator(),
                      ),
                      _CalcButtonData(
                        label: '⌫',
                        color: const Color(0xFF424248),
                        textColor: Colors.white,
                        event: const DeleteLastChar(),
                      ),
                      _CalcButtonData(
                        label: '÷',
                        color: const Color(0xFFFF9800),
                        textColor: Colors.white,
                        event: const OperationPressed('÷'),
                      ),
                      _CalcButtonData(
                        label: '×',
                        color: const Color(0xFFFF9800),
                        textColor: Colors.white,
                        event: const OperationPressed('×'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildButtonRow(
                    context,
                    [
                      _CalcButtonData(
                        label: '7',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('7'),
                      ),
                      _CalcButtonData(
                        label: '8',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('8'),
                      ),
                      _CalcButtonData(
                        label: '9',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('9'),
                      ),
                      _CalcButtonData(
                        label: '-',
                        color: const Color(0xFFFF9800),
                        textColor: Colors.white,
                        event: const OperationPressed('-'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildButtonRow(
                    context,
                    [
                      _CalcButtonData(
                        label: '4',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('4'),
                      ),
                      _CalcButtonData(
                        label: '5',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('5'),
                      ),
                      _CalcButtonData(
                        label: '6',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('6'),
                      ),
                      _CalcButtonData(
                        label: '+',
                        color: const Color(0xFFFF9800),
                        textColor: Colors.white,
                        event: const OperationPressed('+'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildButtonRow(
                    context,
                    [
                      _CalcButtonData(
                        label: '1',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('1'),
                      ),
                      _CalcButtonData(
                        label: '2',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('2'),
                      ),
                      _CalcButtonData(
                        label: '3',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('3'),
                      ),
                      _CalcButtonData(
                        label: '=',
                        color: const Color(0xFF4CAF50),
                        textColor: Colors.white,
                        event: const CalculateResult(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildButtonRow(
                    context,
                    [
                      _CalcButtonData(
                        label: '0',
                        color: const Color(0xFF2E2F38),
                        flex: 2,
                        event: const NumberPressed('0'),
                      ),
                      _CalcButtonData(
                        label: '.',
                        color: const Color(0xFF2E2F38),
                        event: const NumberPressed('.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context, List<_CalcButtonData> buttons) {
    return Row(
      children: buttons.map((data) {
        return Expanded(
          flex: data.flex,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SizedBox(
              height: 64,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: data.color,
                  foregroundColor: data.textColor ?? Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.zero,
                  elevation: 2,
                ),
                onPressed: () {
                  context.read<CalculatorBloc>().add(data.event);
                },
                child: Text(
                  data.label,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _CalcButtonData {
  final String label;
  final Color color;
  final Color? textColor;
  final int flex;
  final CalculatorEvent event;

  _CalcButtonData({
    required this.label,
    required this.color,
    this.textColor,
    this.flex = 1,
    required this.event,
  });
}
