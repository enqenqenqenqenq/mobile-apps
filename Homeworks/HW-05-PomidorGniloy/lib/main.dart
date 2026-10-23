import 'package:flutter/material.dart';
import 'screens/Login.dart';
import 'screens/Main.dart';
import 'screens/Registration.dart';
import 'screens/Settings.dart';
import 'screens/Statistics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/Settings',
      routes: {
        '/Settings': (context) => const Settings(),
        '/Login': (context) => const Login(),
        '/Registration': (context) => const Registration(),
        '/Main': (context) => const Main(),
        '/Statistics': (context) => const Statistics(),
      },
    );
  }
}
