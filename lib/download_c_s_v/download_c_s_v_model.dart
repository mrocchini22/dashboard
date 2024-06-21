import '/flutter_flow/flutter_flow_util.dart';
import 'download_c_s_v_widget.dart' show DownloadCSVWidget;
import 'package:flutter/material.dart';

class DownloadCSVModel extends FlutterFlowModel<DownloadCSVWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - requestPermissionDownload] action in Button widget.
  bool? val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
