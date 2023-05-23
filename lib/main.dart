import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/call_api/bloc/blocs/article_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc_example/counter_cubit/counter_cubit.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterCubit()),
          BlocProvider(create: (context) => CounterBloc()),
          BlocProvider(create: (context) => ArticleBloc()),
        ],
        child: const MainScreen(),
      ),
    );
  }
}


