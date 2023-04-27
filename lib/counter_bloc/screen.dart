import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc_example/counter_bloc/bloc/counter_event.dart';

class CounterBlocScreen extends StatelessWidget {
  const CounterBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(IncreaseEvent()),
            child: const Icon(Icons.arrow_drop_up_outlined),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(DecreaseEvent()),
            child: const Icon(Icons.arrow_drop_down_sharp),
          ),
        ],
      ),
      body:  Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Text(state.toString(), style: const TextStyle(
                fontSize: 64, color: CupertinoColors.systemIndigo),);
          },
        ),
      ),
    );
  }
}
