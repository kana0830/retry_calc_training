import 'package:flutter/material.dart';
import 'package:retry_calc_training/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "シンプルすぎる計算脳トレ",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
