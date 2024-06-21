import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'grafics_data_widget.dart' show GraficsDataWidget;
import 'package:flutter/material.dart';

class GraficsDataModel extends FlutterFlowModel<GraficsDataWidget> {
  ///  Local state fields for this page.

  List<AverageGraphsStruct> values = [];
  void addToValues(AverageGraphsStruct item) => values.add(item);
  void removeFromValues(AverageGraphsStruct item) => values.remove(item);
  void removeAtIndexFromValues(int index) => values.removeAt(index);
  void insertAtIndexInValues(int index, AverageGraphsStruct item) =>
      values.insert(index, item);
  void updateValuesAtIndex(int index, Function(AverageGraphsStruct) updateFn) =>
      values[index] = updateFn(values[index]);

  List<Color> colors = [];
  void addToColors(Color item) => colors.add(item);
  void removeFromColors(Color item) => colors.remove(item);
  void removeAtIndexFromColors(int index) => colors.removeAt(index);
  void insertAtIndexInColors(int index, Color item) =>
      colors.insert(index, item);
  void updateColorsAtIndex(int index, Function(Color) updateFn) =>
      colors[index] = updateFn(colors[index]);

  int value = 0;

  int len = 12;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
