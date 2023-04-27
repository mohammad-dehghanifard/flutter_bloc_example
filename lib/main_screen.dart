import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/counter_bloc/screen.dart';


class MainScreen extends StatelessWidget {

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterBlocScreen();
  }

}
