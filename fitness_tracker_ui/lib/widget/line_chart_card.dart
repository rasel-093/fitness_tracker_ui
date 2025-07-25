import 'package:fitness_tracker_ui/const/constant.dart';
import 'package:fitness_tracker_ui/widget/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fitness_tracker_ui/data/line_chart_data.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Steps Overview',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                              meta: meta,
                              child: Text(
                                data.bottomTitle[value.toInt()].toString(),
                              ),
                            )
                            : const SizedBox();
                      },
                      reservedSize: 40,
                      interval: 1,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: data.spots,
                    isCurved: true,
                    color: selectionColor,
                    barWidth: 2.5,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                      show: true,
                    ),
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
