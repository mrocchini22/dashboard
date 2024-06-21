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

import '/custom_code/widgets/index.dart' as wd; // Imports other custom widgets

class CustomHeatMapWidget extends StatefulWidget {
  const CustomHeatMapWidget(
      {super.key,
      this.width,
      this.height,
      required this.yValues,
      required this.xValues,
      required this.rowHeight,
      required this.valori});
  final double? width;
  final double? height;
  final List<String> yValues;
  final List<String> xValues;
  final double rowHeight;
  final List<ValoreHMStruct> valori;

  @override
  State<CustomHeatMapWidget> createState() => _CustomHeatMapWidgetState();
}

class _CustomHeatMapWidgetState extends State<CustomHeatMapWidget> {
  @override
  Widget build(BuildContext context) {
    // Calculate heights
    double yValuesHeight =
        (widget.height! - widget.rowHeight) / widget.yValues.length;
    double heatMapHeight = widget.height! - widget.rowHeight;
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(widget.yValues.length, (index) {
                final yValue = widget.yValues[index];
                return Container(
                  width: widget.width! * 0.2,
                  height: yValuesHeight,
                  decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      yValue,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                );
              }),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: widget.width! * 0.8,
                  height: heatMapHeight,
                  child: wd.HeatMap(
                      width: widget.width! * 0.8,
                      height: heatMapHeight,
                      yValues: widget.yValues,
                      xValues: widget.xValues,
                      valori: widget.valori),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: widget.width! * 0.2,
              height: widget.rowHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(widget.xValues.length, (index) {
                final xValue = widget.xValues[index];
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: (widget.width! * 0.8) / widget.xValues.length,
                    height: widget.rowHeight,
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        xValue,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
