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

import 'package:syncfusion_flutter_charts/charts.dart'; // Import Synfusion Charts

class HorizontalBars extends StatefulWidget {
  const HorizontalBars({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<HorizontalBars> createState() => _HorizontalBarsState();
}

class _HorizontalBarsState extends State<HorizontalBars> {
  List<_ChartData> data = [
    _ChartData('arte', 225),
    _ChartData('dada', 450),
    _ChartData('jovanotti', 230),
    _ChartData('birra', 370),
    _ChartData('sagra', 200),
    _ChartData('experience', 370),
    _ChartData('tennis', 230),
    _ChartData('cantautori', 300),
    _ChartData('chitarra', 450),
    _ChartData('natale', 230),
    _ChartData('piscina', 370),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(),
        series: <ChartSeries<_ChartData, String>>[
          BarSeries<_ChartData, String>(
            dataSource: data,
            xValueMapper: (_ChartData data, _) => data.category,
            yValueMapper: (_ChartData data, _) => data.value,
            dataLabelSettings: DataLabelSettings(isVisible: true),
          )
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.category, this.value);

  final String category;
  final double value;
}
