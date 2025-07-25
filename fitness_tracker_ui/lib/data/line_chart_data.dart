import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class LineData {
  final spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(2.0, 24.0),
    FlSpot(3.0, 18.0),
    FlSpot(4.0, 20.0),
    FlSpot(5.0, 22.0),
    FlSpot(6.0, 19.0),
    FlSpot(7.0, 23.0),
    FlSpot(8.0, 25.0),
    FlSpot(9.0, 20.0),
    FlSpot(10.0, 22.0),
    FlSpot(11.0, 24.0),
    FlSpot(12.0, 21.0),
    FlSpot(13.0, 23.0),
    FlSpot(14.0, 26.0),
    FlSpot(15.0, 22.0),
    FlSpot(16.0, 24.0),
    FlSpot(17.0, 20.0),
    FlSpot(18.0, 22.0),
    FlSpot(19.0, 21.0),
    FlSpot(20.0, 23.0),
  ];

  final leftTitle = {
    0: "0K",
    20: "2k",
    40: "4k",
    60: "6k",
    80: "8k",
    100: "10k",
  };

  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
