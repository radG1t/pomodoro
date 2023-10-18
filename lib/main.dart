import 'package:flutter/material.dart';
import 'package:pomodoro/obj.dart';
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
      home: const Stack(children: [
        Positioned.fill(child: FocusPage()),
        Positioned(
          right: 12,
          left: 12,
          bottom: 12,
          child: BottomNavigation(),
        )
      ]),
    );
  }
}
