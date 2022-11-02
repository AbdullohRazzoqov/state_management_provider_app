import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/counter_provider.dart';

class Increase extends StatelessWidget {
  const Increase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            "CounterProvider: ${context.watch<CounterProvider>().number}",
            style: const TextStyle(fontSize: 25),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: context.watch<CounterProvider>().number > 0 ?  () {
                context.read<CounterProvider>().reduce();
              }: null,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().increase();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
