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

import 'dart:math' as math;

class HeatMap extends StatefulWidget {
  const HeatMap({
    super.key,
    this.width,
    this.height,
    required this.yValues,
    required this.xValues,
    required this.valori,
  });
  final double? width;
  final double? height;
  final List<String> yValues;
  final List<String> xValues;
  final List<ValoreHMStruct> valori;

  @override
  State<HeatMap> createState() => _HeatMapState();
}

class _HeatMapState extends State<HeatMap> {
  @override
  Widget build(BuildContext context) {
    List<int> val = valoriHM(widget.valori);
    double percentuale = 1 / (val[1] - val[0]);
    double wstr = 0;
    double hstr = 0;
    wstr = (100 / widget.xValues.length.toDouble()) *
        0.01 *
        widget.width!.toDouble();
    hstr = (100 / widget.yValues.length.toDouble()) *
        0.01 *
        widget.height!.toDouble();
    return Container(
      height: widget.height,
      width: widget.width,
      child: Column(
        // Use Column for vertical rows
        children: List.generate(widget.yValues.length, (rowIndex) {
          return Row(
            // Create a Row for each yValue
            children: List.generate(widget.xValues.length, (columnIndex) {
              return Container(
                // Set width, height, color, or other desired properties
                width: wstr,
                height: hstr,
                decoration: BoxDecoration(
                  color: coloreHM(
                      Color.fromARGB(255, 249, 124, 0),
                      Color.fromARGB(255, 83, 53, 238),
                      (widget.valori[rowIndex].valori[columnIndex] - val[0]) *
                          percentuale,
                      Color.fromARGB(255, 216, 20, 99)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                child: Text(widget.valori[rowIndex].valori[columnIndex]
                    .toString()), // Placeholder
              );
            }),
          );
        }),
      ),
    );
  }
}
