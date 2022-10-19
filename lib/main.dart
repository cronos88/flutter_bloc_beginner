// este import lo pasamos mejor al archivo bloc_imports.dart
// import 'package:counter_app_bloc/bloc/mybloc_observer.dart';

import 'package:flutter/material.dart';

import 'bloc/bloc_imports.dart';
import 'screen/home_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Counter Bloc',
        theme: ThemeData(primaryColor: Colors.blue),
        home: const HomeScreen(),
      ),
    );
  }
}

// https://www.youtube.com/watch?v=79C6CdZQa8c
// Quedé en minuto 15:21
