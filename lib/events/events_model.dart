import '/flutter_flow/flutter_flow_util.dart';
import 'events_widget.dart' show EventsWidget;
import 'package:flutter/material.dart';

class EventsModel extends FlutterFlowModel<EventsWidget> {
  ///  Local state fields for this page.

  List<String> scritte = ['Hello World', 'Hello Mars', 'Hello Venus'];
  void addToScritte(String item) => scritte.add(item);
  void removeFromScritte(String item) => scritte.remove(item);
  void removeAtIndexFromScritte(int index) => scritte.removeAt(index);
  void insertAtIndexInScritte(int index, String item) =>
      scritte.insert(index, item);
  void updateScritteAtIndex(int index, Function(String) updateFn) =>
      scritte[index] = updateFn(scritte[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
