// este import lo pasamos mejor al archivo bloc_imports.dart
// import 'package:counter_app_bloc/bloc/mybloc_observer.dart';

import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Bloc',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

// https://www.youtube.com/watch?v=79C6CdZQa8c
// Quedé en minuto 15:21
