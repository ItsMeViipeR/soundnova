import "package:flutter/material.dart";
import 'package:soundnova/sidebar.dart';
import "package:soundnova/constants.dart" as constants;

class SoundNovaAbout extends StatelessWidget {
  const SoundNovaAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SoundNova | About",
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: const SoundNovaAboutPage(),
    );
  }
}

class SoundNovaAboutPage extends StatefulWidget {
  const SoundNovaAboutPage({super.key});

  @override
  State<SoundNovaAboutPage> createState() => _SoundNovaAboutPageState();
}

class _SoundNovaAboutPageState extends State<SoundNovaAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(constants.appName),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      drawer: sidebar(constants.appName),
      body: const Center(child: Center()),
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
    );
  }
}
