import '/flutter_flow/flutter_flow_util.dart';
import 'navigation_widget.dart' show NavigationWidget;
import 'package:flutter/material.dart';

class NavigationModel extends FlutterFlowModel<NavigationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - naviga] action in Button widget.
  String? risultato;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
