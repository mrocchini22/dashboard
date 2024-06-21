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

import '/custom_code/widgets/index.dart' as wd; // Imports other custom widgets

import 'package:flutter_slidable/flutter_slidable.dart'; // Assicurati di importare correttamente SliderNew

class ListSliderNewNotify extends StatefulWidget {
  const ListSliderNewNotify({
    Key? key,
    this.width,
    this.height,
    required this.immagina,
    required this.scritte,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String immagina;
  final List<String> scritte;

  @override
  State<ListSliderNewNotify> createState() => _ListSliderNewNotifyState();
}

class _ListSliderNewNotifyState extends State<ListSliderNewNotify> {
  List<String> _currentScritte = [];

  @override
  void initState() {
    super.initState();
    _currentScritte = List.from(widget.scritte); // Clona la lista iniziale
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(_currentScritte.length, (index) {
        final scrittaItem = _currentScritte[index];
        return Dismissible(
          key: UniqueKey(), // Usa una chiave univoca per evitare conflitti
          onDismissed: (direction) async {
            setState(() {
              _currentScritte.removeAt(index); // Rimuove l'elemento dalla lista
            });
          },
          background: Container(color: Colors.red), // Sfondo del dismiss
          child: Container(
            width: widget.width,
            height: 100,
            child: wd.SliderNewNotify(
              width: widget.width,
              height: 100,
              immagina: widget.immagina,
              onDismissed: () async {
                setState(() {
                  _currentScritte.removeAt(index);
                });
              },
              scritta: scrittaItem,
            ),
          ),
        );
      }),
    );
  }
}
