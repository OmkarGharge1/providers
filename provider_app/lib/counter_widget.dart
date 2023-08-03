import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/counter_provider.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text('Provider'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('The Count : ${context.watch<Count>().counter}'),
            ElevatedButton(onPressed: () {}, child: const Text('Next Screen'))
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<Count>().increment(),
          backgroundColor: Colors.redAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
