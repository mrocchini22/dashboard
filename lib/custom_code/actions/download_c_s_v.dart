// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:csv/csv.dart';

Future downloadCSV() async {
  List<dynamic> associateList = [
    {"number": 1, "lat": "14.97534313396318", "lon": "101.22998536005622"},
    {"number": 2, "lat": "14.97534313396318", "lon": "101.22998536005622"},
    {"number": 3, "lat": "14.97534313396318", "lon": "101.22998536005622"},
    {"number": 4, "lat": "14.97534313396318", "lon": "101.22998536005622"}
  ];

  List<List<dynamic>> rows = [];

  List<dynamic> row = [];
  row.add("number");
  row.add("latitude");
  row.add("longitude");
  rows.add(row);
  for (int i = 0; i < associateList.length; i++) {
    List<dynamic> row = [];
    row.add(associateList[i]["number"] - 1);
    row.add(associateList[i]["lat"]);
    row.add(associateList[i]["lon"]);
    rows.add(row);
  }

  String csv = const ListToCsvConverter().convert(rows);

  String dir = await ExternalPath.getExternalStoragePublicDirectory(
      ExternalPath.DIRECTORY_DOWNLOADS);
  String file = "$dir";

  File f = File(file + "/filename.csv");

  f.writeAsString(csv);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
