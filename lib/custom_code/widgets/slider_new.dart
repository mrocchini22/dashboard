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

import 'package:flutter_slidable/flutter_slidable.dart';

class SliderNew extends StatefulWidget {
  const SliderNew(
      {Key? key,
      this.width,
      this.height,
      required this.immagina,
      required this.onDismissed,
      required this.scritta})
      : super(key: key);

  final double? width;
  final double? height;
  final String immagina;
  final Future Function() onDismissed;
  final String scritta;
  // Cambiato il tipo di callback

  @override
  State<SliderNew> createState() => _SliderNewState();
}

class _SliderNewState extends State<SliderNew> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          onDismissed: () {
            widget
                .onDismissed(); // Aspetta che la funzione onDismissed completi
          },
        ),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (BuildContext context) {
              print('Archive pressed ...');
            },
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Elimina',
          ),
          SlidableAction(
            onPressed: (context) {
              context.goNamed(
                'scanQR',
                queryParameters: {
                  'scritta': widget.scritta,
                },
              );
            },
            backgroundColor: const Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.qr_code_scanner,
            label: 'Scan QR',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (BuildContext context) {
              print('Archive pressed ...');
            },
            backgroundColor: const Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.edit_attributes,
            label: 'Modifica',
          ),
          SlidableAction(
            onPressed: (BuildContext context) {
              print('Save pressed ...');
            },
            backgroundColor: const Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.campaign,
            label: 'Comunica',
          ),
        ],
      ),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: Stack(
          children: [
            // Immagine di sfondo
            Image.network(
              widget.immagina,
              fit: BoxFit.cover,
              width: widget.width,
              height: widget.height,
            ),
            // Testo sovrapposto
            Positioned(
              top: 10, // Regola la posizione verticale del testo
              left: 10, // Regola la posizione orizzontale del testo
              child: Text(
                'Scritta: ${widget.scritta}', // Esempio di testo
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
