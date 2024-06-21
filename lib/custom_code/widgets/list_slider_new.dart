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

import '/custom_code/widgets/index.dart'
    as wd; // Assicurati di importare correttamente SliderNew

class ListSliderNew extends StatefulWidget {
  const ListSliderNew({
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
  State<ListSliderNew> createState() => _ListSliderNewState();
}

class _ListSliderNewState extends State<ListSliderNew> {
  List<String> _currentScritte = [];

  @override
  void initState() {
    super.initState();
    _currentScritte = List.from(widget.scritte); // Clona la lista iniziale
  }

  void _showEliminateEventWidget(String scrittaItem, int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: EliminateEventWidget(
            nomeEvento: scrittaItem,
            onConfirm: () {
              setState(() {
                _currentScritte
                    .removeAt(index); // Rimuove l'elemento dalla lista
              });
              Navigator.of(context).pop(); // Chiude il bottom sheet
            },
            onCancel: () {
              Navigator.of(context)
                  .pop(); // Chiude il bottom sheet senza rimuovere l'elemento
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(_currentScritte.length, (index) {
        final scrittaItem = _currentScritte[index];
        return Dismissible(
          key: UniqueKey(), // Usa una chiave unica per evitare conflitti
          confirmDismiss: (direction) async {
            // Mostra il bottom sheet per confermare l'eliminazione
            _showEliminateEventWidget(scrittaItem, index);
            return false; // Non elimina l'elemento automaticamente
          },
          background: Container(color: Colors.red), // Sfondo del dismiss
          child: Container(
            width: widget.width,
            height: 100,
            child: wd.SliderNew(
              width: widget.width,
              height: 100,
              immagina: widget.immagina,
              onDismissed: () async {
                // Mostra il bottom sheet per confermare l'eliminazione
                _showEliminateEventWidget(scrittaItem, index);
              },
              scritta: scrittaItem,
            ),
          ),
        );
      }),
    );
  }
}

class EliminateEventWidget extends StatelessWidget {
  final String nomeEvento;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  EliminateEventWidget({
    required this.nomeEvento,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Sei sicuro di voler eliminare $nomeEvento?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: onConfirm,
                child: Text('Si'),
              ),
              ElevatedButton(
                onPressed: onCancel,
                child: Text('No'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
