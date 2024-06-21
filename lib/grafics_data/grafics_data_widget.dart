import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'grafics_data_model.dart';
export 'grafics_data_model.dart';

class GraficsDataWidget extends StatefulWidget {
  const GraficsDataWidget({super.key});

  @override
  State<GraficsDataWidget> createState() => _GraficsDataWidgetState();
}

class _GraficsDataWidgetState extends State<GraficsDataWidget> {
  late GraficsDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GraficsDataModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Average participation',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.value = 0;
                      _model.colors = [];
                      _model.values = [];
                      _model.len = random_data.randomInteger(1, 12);
                      setState(() {});
                      while (_model.value < _model.len) {
                        _model.addToValues(AverageGraphsStruct(
                          year: 2024,
                          month: _model.value + 1,
                          number: random_data.randomInteger(10, 100),
                        ));
                        _model.addToColors(random_data.randomColor());
                        _model.value = _model.value + 1;
                        setState(() {});
                      }
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
              if (_model.colors.isNotEmpty)
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 400.0,
                  child: custom_widgets.VerticalColoredBarsParam(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 400.0,
                    xValues: functions.returnMonths(_model.len),
                    yValues: _model.values.map((e) => e.number).toList(),
                    colors: _model.colors,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
