import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter_cubit/counter_cubit.dart';

class CounterCubitScreen extends StatelessWidget {
  const CounterCubitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit'),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterCubit>(context).increase(),
            child: const Icon(Icons.arrow_drop_up_outlined),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterCubit>(context).decrease(),
            child: const Icon(Icons.arrow_drop_down_sharp),
          ),
        ],
      ),
      body:  Center(
        child: BlocBuilder<CounterCubit,int>(
          buildWhen: (previous, current) {
            if(current == previous){
              return false;
            }else{
              return true;
            }
          },
          builder: (context, state) {
            return Text(state.toString(), style: const TextStyle(
                fontSize: 64, color: CupertinoColors.systemIndigo),);
          },
        ),
      ),
    );
  }
}
