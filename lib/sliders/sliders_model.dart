import '/flutter_flow/flutter_flow_util.dart';
import 'sliders_widget.dart' show SlidersWidget;
import 'package:flutter/material.dart';

class SlidersModel extends FlutterFlowModel<SlidersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
