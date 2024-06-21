import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'notifiche_model.dart';
export 'notifiche_model.dart';

class NotificheWidget extends StatefulWidget {
  const NotificheWidget({super.key});

  @override
  State<NotificheWidget> createState() => _NotificheWidgetState();
}

class _NotificheWidgetState extends State<NotificheWidget> {
  late NotificheModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificheModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              final nome = (["ciao", "addio", "ci vediamo"]).toList();
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(nome.length, (nomeIndex) {
                  final nomeItem = nome[nomeIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onLongPress: () async {
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.975)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.95)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.925)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.9)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.875)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.85)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.825)
                          .toList()
                          .cast<double>();
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 35));
                      _model.valori = functions
                          .modificaVal(_model.valori.toList(), nomeIndex, 0.8)
                          .toList()
                          .cast<double>();
                      setState(() {});
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width *
                              _model.valori[nomeIndex],
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Text(
                            nomeItem,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        if (_model.valori[nomeIndex] == 0.8)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'extra',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'geronimo',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
