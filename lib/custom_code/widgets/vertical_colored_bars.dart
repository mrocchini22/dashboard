// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart'; // Import the charts package

class VerticalColoredBars extends StatefulWidget {
  const VerticalColoredBars({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<VerticalColoredBars> createState() => _VerticalColoredBarsState();
}

class _VerticalColoredBarsState extends State<VerticalColoredBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        backgroundColor: Colors.black,
        primaryXAxis: CategoryAxis(
          labelStyle: TextStyle(color: Colors.white),
        ),
        primaryYAxis: NumericAxis(
          isVisible: false,
        ),
        series: <ChartSeries>[
          ColumnSeries<ChartData, String>(
            dataSource: [
              ChartData('GEN', 10, Colors.blue),
              ChartData('FEB', 8, Colors.orange),
              ChartData('MAR', 9, Colors.pinkAccent),
              ChartData('APR', 7, Colors.blueAccent),
              ChartData('MAG', 9, Colors.pink.shade100),
              ChartData('GIU', 8, Colors.pink),
              ChartData('LUG', 9, Colors.red),
              ChartData('AGO', 8, Colors.purple.shade200),
              ChartData('SET', 9, Colors.blue),
              ChartData('OTT', 8, Colors.purple),
              ChartData('NOV', 9, Colors.lightBlue),
              ChartData('DIC', 8, Colors.blue.shade300),
            ],
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            pointColorMapper: (ChartData data, _) => data.color,
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
