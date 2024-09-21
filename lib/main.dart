import 'package:flutter/material.dart';
import 'package:weather_project/screens/home_screen.dart';

void main() {
  runApp(const WeatherProject());
}

class WeatherProject extends StatefulWidget {
  const WeatherProject({super.key});

  @override
  State<WeatherProject> createState() => _WeatherProjectState();
}

class _WeatherProjectState extends State<WeatherProject> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
