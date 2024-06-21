import '/flutter_flow/flutter_flow_util.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<String> yValuesHM = [
    'Sport',
    'Concerti',
    'Disco Feste',
    'Manifestazione'
  ];
  void addToYValuesHM(String item) => yValuesHM.add(item);
  void removeFromYValuesHM(String item) => yValuesHM.remove(item);
  void removeAtIndexFromYValuesHM(int index) => yValuesHM.removeAt(index);
  void insertAtIndexInYValuesHM(int index, String item) =>
      yValuesHM.insert(index, item);
  void updateYValuesHMAtIndex(int index, Function(String) updateFn) =>
      yValuesHM[index] = updateFn(yValuesHM[index]);

  List<String> xValuesHM = ['GEN', 'FEB', 'MAR', 'MAG', 'GIU', 'LUG', 'AGO'];
  void addToXValuesHM(String item) => xValuesHM.add(item);
  void removeFromXValuesHM(String item) => xValuesHM.remove(item);
  void removeAtIndexFromXValuesHM(int index) => xValuesHM.removeAt(index);
  void insertAtIndexInXValuesHM(int index, String item) =>
      xValuesHM.insert(index, item);
  void updateXValuesHMAtIndex(int index, Function(String) updateFn) =>
      xValuesHM[index] = updateFn(xValuesHM[index]);

  List<int> valoriNumericiHM = [];
  void addToValoriNumericiHM(int item) => valoriNumericiHM.add(item);
  void removeFromValoriNumericiHM(int item) => valoriNumericiHM.remove(item);
  void removeAtIndexFromValoriNumericiHM(int index) =>
      valoriNumericiHM.removeAt(index);
  void insertAtIndexInValoriNumericiHM(int index, int item) =>
      valoriNumericiHM.insert(index, item);
  void updateValoriNumericiHMAtIndex(int index, Function(int) updateFn) =>
      valoriNumericiHM[index] = updateFn(valoriNumericiHM[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
