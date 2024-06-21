import '/flutter_flow/flutter_flow_util.dart';
import 'vediamo_widget.dart' show VediamoWidget;
import 'package:flutter/material.dart';

class VediamoModel extends FlutterFlowModel<VediamoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
