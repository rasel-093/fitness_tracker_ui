import 'package:fitness_tracker_ui/const/constant.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: cardBg,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: 'Search',
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}
