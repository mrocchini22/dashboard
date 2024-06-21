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

class RicognizionePubblico extends StatefulWidget {
  const RicognizionePubblico(
      {super.key,
      this.width,
      this.height,
      required this.scritte,
      required this.valori,
      required this.colori});

  final double? width;
  final double? height;
  final List<String> scritte;
  final List<int> valori;
  final List<Color> colori;

  @override
  State<RicognizionePubblico> createState() => _RicognizionePubblicoState();
}

class _RicognizionePubblicoState extends State<RicognizionePubblico> {
  @override
  Widget build(BuildContext context) {
    // Crea una lista di tuple
    List<Elemento> elementi = [];
    for (int i = 0; i < widget.scritte.length; i++) {
      elementi
          .add(Elemento(widget.scritte[i], widget.valori[i], widget.colori[i]));
    }
    // Ordina la lista di oggetti Elemento in base ai valori
    elementi.sort((a, b) => a.valore.compareTo(b.valore));
    List<String> radi = [];
    List<String> linee = [];
    int valFin = elementi[3].valore;
    elementi.forEach((elemento) {
      double numero = (90 / ((elemento.valore / valFin) * 90)) - 1;
      radi.add(((elemento.valore / valFin) * 90).floor().toString() + "%");
      if (numero == 0) {
        linee.add("10%");
      } else {
        linee.add(((numero * 90) + (numero * 10)).floor().toString() + "%");
      }
    });
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        wd.SingolaTorta(
            valori: [1, 1, 1, 97],
            stringhe: [elementi[3].scritte, '', '', ''],
            radius: radi[3],
            linea: linee[3],
            colore: elementi[3].colore),
        wd.SingolaTorta(
            valori: [30, 20, 25, 25],
            stringhe: [elementi[2].scritte, '', '', ''],
            radius: radi[2],
            linea: linee[2],
            colore: elementi[2].colore),
        wd.SingolaTorta(
            valori: [60, 20, 10, 10],
            stringhe: [elementi[1].scritte, '', '', ''],
            radius: radi[1],
            linea: linee[1],
            colore: elementi[1].colore),
        wd.SingolaTorta(
            valori: [90, 3, 3, 4],
            stringhe: [elementi[0].scritte, '', '', ''],
            radius: radi[0],
            linea: linee[0],
            colore: elementi[0].colore)
      ],
    );
  }
}

class Elemento {
  String scritte;
  int valore;
  Color colore;

  Elemento(this.scritte, this.valore, this.colore);
}
