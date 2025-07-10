import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fitness Tracker')),
      body: Center(
        child: Text(
          'Welcome to the Fitness Tracker App',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
