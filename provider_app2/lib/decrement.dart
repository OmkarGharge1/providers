import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app2/increment.dart';
import 'package:provider_app2/providers/increment_provider.dart';

// ignore: camel_case_types
class decrement extends StatefulWidget {
  const decrement({super.key});

  @override
  State<decrement> createState() => _decrementState();
}

class _decrementState extends State<decrement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Decrement',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Increment>(builder: (context, decrementclass, widget) {
              return Text(
                '${decrementclass.cnt}',
                style:
                    const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const incrementScreen()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text(
                'Prev Page',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Increment>(context, listen: false).decrement();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.remove,
          color: Colors.white,
        ),
      ),
    );
  }
}
