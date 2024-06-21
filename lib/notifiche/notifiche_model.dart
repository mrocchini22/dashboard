import '/flutter_flow/flutter_flow_util.dart';
import 'notifiche_widget.dart' show NotificheWidget;
import 'package:flutter/material.dart';

class NotificheModel extends FlutterFlowModel<NotificheWidget> {
  ///  Local state fields for this page.

  List<double> valori = [1.0, 1.0, 1.0];
  void addToValori(double item) => valori.add(item);
  void removeFromValori(double item) => valori.remove(item);
  void removeAtIndexFromValori(int index) => valori.removeAt(index);
  void insertAtIndexInValori(int index, double item) =>
      valori.insert(index, item);
  void updateValoriAtIndex(int index, Function(double) updateFn) =>
      valori[index] = updateFn(valori[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
