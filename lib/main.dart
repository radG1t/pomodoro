import 'package:flutter/material.dart';
import 'package:pomodoro/shortbreak.dart';
import 'package:pomodoro/work.dart';
import 'package:pomodoro/longbreak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomodox',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
        useMaterial3: true,
      ),
      home: const FocusPage(),
    );
  }
}
