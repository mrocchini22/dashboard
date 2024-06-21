import '/flutter_flow/flutter_flow_util.dart';
import 'test_time_widget.dart' show TestTimeWidget;
import 'package:flutter/material.dart';

class TestTimeModel extends FlutterFlowModel<TestTimeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for minutes widget.
  FocusNode? minutesFocusNode;
  TextEditingController? minutesTextController;
  String? Function(BuildContext, String?)? minutesTextControllerValidator;
  // State field(s) for lflag widget.
  FocusNode? lflagFocusNode;
  TextEditingController? lflagTextController;
  String? Function(BuildContext, String?)? lflagTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    minutesFocusNode?.dispose();
    minutesTextController?.dispose();

    lflagFocusNode?.dispose();
    lflagTextController?.dispose();
  }
}
