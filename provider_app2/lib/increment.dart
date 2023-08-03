import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app2/decrement.dart';
import 'package:provider_app2/providers/increment_provider.dart';

class incrementScreen extends StatefulWidget {
  const incrementScreen({super.key});

  @override
  State<incrementScreen> createState() => _incrementScreenState();
}

class _incrementScreenState extends State<incrementScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Increment',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Increment>(builder: (context, incrementclass, widget) {
              return Text(
                '${incrementclass.cnt}',
                style:
                    const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const decrement()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text(
                'Next Page',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Increment>(context, listen: false).increment();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
