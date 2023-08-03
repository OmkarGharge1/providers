import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app2/providers/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Providers',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ChangeNotifierProvider<HomeScreenProvider>(
          create: (context) => HomeScreenProvider(),
          child: Consumer<HomeScreenProvider>(
            builder: (context, provider, widget) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    provider.Eligibility.toString(),
                    style: TextStyle(
                        color: (provider.isEligible == true)
                            ? Colors.green
                            : Colors.red),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text('Enter Age'),
                        hintText: 'Enter the age like 19'),
                    onChanged: (val) {
                      provider.checkElgibility(int.parse(val));
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
