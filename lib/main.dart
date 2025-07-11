import 'package:fitness_tracker_ui/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_ui/screens/homepage_screen.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fitness Tracker",
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomepageScreen(),
    );
  }
}
