import 'package:flutter/material.dart';
import 'package:soundnova/appbar.dart';
import 'package:soundnova/constants.dart' as constants;

void main() {
  runApp(const SoundNova());
}

class SoundNova extends StatelessWidget {
  const SoundNova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.appName,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: const SoundNovaHomePage(),
    );
  }
}

class SoundNovaHomePage extends StatefulWidget {
  const SoundNovaHomePage({super.key});

  @override
  State<SoundNovaHomePage> createState() => _SoundNovaHomePageState();
}

class _SoundNovaHomePageState extends State<SoundNovaHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(constants.appName),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      drawer: appbar(constants.appName),
      body: const Padding(
        padding: EdgeInsets.all(35),
        child: Center(),
      ),
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
    );
  }
}
