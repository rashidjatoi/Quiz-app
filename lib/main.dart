import 'package:flutter/material.dart';
import 'package:quiz_up/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuizUp'),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: SafeArea(child: QuizPage()),
        ),
      ),
    );
  }
}
