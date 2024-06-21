import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'test_model.dart';
export 'test_model.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late TestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());
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
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  child: custom_widgets.HorizontalBars(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 400.0,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  child: custom_widgets.VerticalColoredBars(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 400.0,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  child: custom_widgets.CircleGraph(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 400.0,
                  ),
                ),
                Builder(
                  builder: (context) {
                    final colore =
                        functions.coloriPersone(const Color(0xFF3AEF39), 85).toList();
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(colore.length, (coloreIndex) {
                        final coloreItem = colore[coloreIndex];
                        return Icon(
                          Icons.person_sharp,
                          color: coloreItem,
                          size: 60.0,
                        );
                      }),
                    );
                  },
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 200.0,
                    child: custom_widgets.RicognizionePubblico(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 200.0,
                      scritte: const ['100k ', '60k', '50k', ' 20k'],
                      valori: const [100, 60, 50, 20],
                      colori: const [
                        Color.fromARGB(255, 120, 234, 10),
                        Color.fromARGB(255, 234, 10, 25),
                        Color.fromARGB(255, 234, 96, 10),
                        Color.fromARGB(255, 10, 92, 234)
                      ],
                    ),
                  ),
                ),
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
                FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                  },
                  text: 'Button',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
