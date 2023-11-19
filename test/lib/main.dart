import 'package:flutter/material.dart';

import 'package:test/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black87,
            fontSize: 22,
          ),
          titleMedium: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
          titleSmall: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
      ),
      home: const  Home(),
    );
  }
}