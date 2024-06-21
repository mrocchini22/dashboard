import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'heat_map_model.dart';
export 'heat_map_model.dart';

class HeatMapWidget extends StatefulWidget {
  const HeatMapWidget({super.key});

  @override
  State<HeatMapWidget> createState() => _HeatMapWidgetState();
}

class _HeatMapWidgetState extends State<HeatMapWidget> {
  late HeatMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeatMapModel());
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
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 200.0,
                      child: custom_widgets.CustomHeatMapWidget(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: 200.0,
                        yValues: _model.yValuesHM,
                        xValues: _model.xValuesHM,
                        rowHeight: 40.0,
                        valori: functions.costruisciValori(
                            _model.xValuesHM.toList(),
                            _model.yValuesHM.toList(),
                            ([
                              64,
                              38,
                              14,
                              56,
                              73,
                              36,
                              97,
                              22,
                              15,
                              99,
                              9,
                              58,
                              48,
                              83,
                              1,
                              99,
                              96,
                              57,
                              56,
                              35,
                              38,
                              17,
                              27,
                              14,
                              71,
                              51,
                              81,
                              91
                            ]).toList()),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.08, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: (MediaQuery.sizeOf(context).width * 0.1) < 40.0
                              ? (MediaQuery.sizeOf(context).width * 0.1)
                              : 40.0,
                          height: 200.0,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF5335EE),
                                Color(0xFFD81463),
                                Color(0xFFF97C00)
                              ],
                              stops: [0.0, 0.5, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
