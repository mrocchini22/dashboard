import '/flutter_flow/flutter_flow_util.dart';
import 'hehe_widget.dart' show HeheWidget;
import 'package:flutter/material.dart';

class HeheModel extends FlutterFlowModel<HeheWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
