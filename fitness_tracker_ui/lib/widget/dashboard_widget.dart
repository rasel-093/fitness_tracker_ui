import 'package:fitness_tracker_ui/widget/activity_details_card.dart';
import 'package:fitness_tracker_ui/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_ui/widget/dashboard_widget.dart';
import 'package:fitness_tracker_ui/widget/line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18),
        HeaderWidget(),
        SizedBox(height: 18),
        ActivityDetailsCard(),
        SizedBox(height: 18),
        LineChartCard(),
        SizedBox(height: 18),
      ],
    );
  }
}
