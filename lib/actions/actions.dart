import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future navigateNotification(
  BuildContext context, {
  String? page,
  dynamic data,
}) async {
  if (page == 'hehe') {
    context.pushNamed(
      'hehe',
      queryParameters: {
        'data': serializeParam(
          data,
          ParamType.JSON,
        ),
      }.withoutNulls,
    );
  } else if (page == 'test') {
    context.pushNamed(
      'test',
      queryParameters: {
        'data': serializeParam(
          data,
          ParamType.JSON,
        ),
      }.withoutNulls,
    );
  } else if (page == 'sliders') {
  } else {
    context.pushNamed(
      'vediamo',
      queryParameters: {
        'data': serializeParam(
          data,
          ParamType.JSON,
        ),
      }.withoutNulls,
    );
  }
}
