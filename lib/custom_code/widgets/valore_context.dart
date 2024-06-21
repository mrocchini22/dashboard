// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ValoreContext extends StatefulWidget {
  const ValoreContext({super.key, this.width, this.height});

  final double? width;
  final double? height;
  @override
  State<ValoreContext> createState() => _ValoreContextState();
}

class _ValoreContextState extends State<ValoreContext> {
  @override
  Widget build(BuildContext context) {
    // Get the context string
    String contextString = context.toString();

    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Context: $contextString'),
        ],
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
