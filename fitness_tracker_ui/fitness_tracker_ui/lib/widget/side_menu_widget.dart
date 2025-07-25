import 'package:fitness_tracker_ui/const/constant.dart';
import 'package:fitness_tracker_ui/data/menu_model_data.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_ui/model/menu_model.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});
  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  final data = SideMenuData();
  int selectedIndex = 0; // This can be used to highlight the selected menu item

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: ListView.builder(
        itemBuilder: (context, index) => builMenuEntry(data, index),
        itemCount: data.menu.length,
      ),
    );
  }

  Widget builMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? selectionColor : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index; // Update the selected index
          });
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              data.menu[index].title,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
