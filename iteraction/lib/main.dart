import 'package:flutter/material.dart';
import 'package:iteraction/Home_Screen.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
