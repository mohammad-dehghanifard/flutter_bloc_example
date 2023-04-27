import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
            child: const Icon(Icons.arrow_drop_up_outlined),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_drop_down_sharp),
          ),
        ],
      ),
      body: const Center(
        child: Text("0",style: TextStyle(fontSize: 64,color: CupertinoColors.systemIndigo),),
      ),
    );
  }
}
