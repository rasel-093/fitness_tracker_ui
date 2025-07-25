import 'package:fitness_tracker_ui/const/constant.dart';
import 'package:fitness_tracker_ui/data/health_data.dart';
import 'package:fitness_tracker_ui/widget/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});
  @override
  Widget build(BuildContext context) {
    final healthData = HealthData();
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemCount: healthData.health_data.length,
      itemBuilder:
          (context, index) => CustomCard(
            color: Colors.black,
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  healthData.health_data[index].icon,
                  width: 30,
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 4),
                  child: Text(
                    healthData.health_data[index].value,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  healthData.health_data[index].title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
