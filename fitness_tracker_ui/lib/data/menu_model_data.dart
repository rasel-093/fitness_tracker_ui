import 'package:fitness_tracker_ui/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(title: "Dashboard", icon: Icons.home),
    MenuModel(title: "Settings", icon: Icons.settings),
    MenuModel(title: "History", icon: Icons.history),
    MenuModel(title: "Profile", icon: Icons.person),
    MenuModel(title: "Exercise", icon: Icons.run_circle),
    MenuModel(title: "SignOut", icon: Icons.logout),
  ];
}
