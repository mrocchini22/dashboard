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

import 'package:syncfusion_flutter_charts/charts.dart';

class SingolaTorta extends StatefulWidget {
  const SingolaTorta(
      {super.key,
      this.width,
      this.height,
      required this.stringhe,
      required this.radius,
      required this.linea,
      required this.valori,
      required this.colore});

  final double? width;
  final double? height;
  final List<String> stringhe;
  final List<int> valori;
  final String radius;
  final String linea;
  final Color colore;
  @override
  State<SingolaTorta> createState() => _SingolaTortaState();
}

class _SingolaTortaState extends State<SingolaTorta> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(series: <CircularSeries<ChartData, String>>[
      PieSeries<ChartData, String>(
          dataSource: getChartData(),
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelMapper: (ChartData data, _) => data.x,
          radius: widget.radius,
          dataLabelSettings: DataLabelSettings(
              labelAlignment: ChartDataLabelAlignment.middle,
              isVisible: true,
              labelPosition: ChartDataLabelPosition.outside,
              connectorLineSettings: ConnectorLineSettings(
                  type: ConnectorType.curve, length: widget.linea),
              color: Color.fromARGB(255, 255, 255, 255)))
    ], margin: EdgeInsets.zero);
  }

  List<ChartData> getChartData() {
    final List<ChartData> chartData = [
      ChartData(
          x: widget.stringhe[0], y: widget.valori[0], color: widget.colore),
      ChartData(
          x: widget.stringhe[1], y: widget.valori[1], color: widget.colore),
      ChartData(
          x: widget.stringhe[2], y: widget.valori[2], color: widget.colore),
      ChartData(
          x: widget.stringhe[3], y: widget.valori[3], color: widget.colore),
    ];
    return chartData;
  }
}

class ChartData {
  ChartData({this.x, this.y, required this.color});
  final String? x;
  final num? y;
  final Color color;
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
