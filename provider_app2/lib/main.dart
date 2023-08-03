import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app2/increment.dart';
import 'package:provider_app2/providers/home_provider.dart';
import 'package:provider_app2/providers/increment_provider.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

void main() {
  // MultiProvider(providers: [
  //   ChangeNotifierProvider(
  //     create: (_) => Increment(),
  //   ),
  //   // ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
  // ], child: const Myapp());
  runApp(const Myapp());
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //     create: (_) => Increment(),

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Increment()),
          ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
        ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false, home: incrementScreen()));
  }
}
