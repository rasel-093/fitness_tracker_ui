import 'package:fitness_tracker_ui/widget/side_menu_widget.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Row(
            children: [
              Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),
              Expanded(flex: 7, child: Container(color: Colors.green)),
              Expanded(flex: 3, child: Container(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
