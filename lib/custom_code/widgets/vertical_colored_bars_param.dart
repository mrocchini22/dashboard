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

class VerticalColoredBarsParam extends StatefulWidget {
  const VerticalColoredBarsParam({
    super.key,
    this.width,
    this.height,
    required this.xValues,
    required this.yValues,
    required this.colors,
  });

  final double? width;
  final double? height;
  final List<String> xValues;
  final List<int> yValues;
  final List<Color> colors;

  @override
  State<VerticalColoredBarsParam> createState() =>
      _VerticalColoredBarsParamState();
}

class _VerticalColoredBarsParamState extends State<VerticalColoredBarsParam> {
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
          isVisible: true,
        ),
        series: <ChartSeries>[
          ColumnSeries<ChartData, String>(
            dataSource: List<ChartData>.generate(
              widget.xValues.length,
              (index) => ChartData(
                widget.xValues[index],
                widget.yValues[index].toDouble(),
                widget.colors[index],
              ),
            ),
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
