import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'hehe_model.dart';
export 'hehe_model.dart';

class HeheWidget extends StatefulWidget {
  const HeheWidget({
    super.key,
    required this.data,
  });

  final dynamic data;

  @override
  State<HeheWidget> createState() => _HeheWidgetState();
}

class _HeheWidgetState extends State<HeheWidget> {
  late HeheModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeheModel());
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
                const SizedBox(
                  width: double.infinity,
                  height: 400.0,
                  child: custom_widgets.VerticalColoredBars(
                    width: double.infinity,
                    height: 400.0,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 400.0,
                  child: custom_widgets.CircleGraph(
                    width: double.infinity,
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
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 400.0,
                    child: custom_widgets.RicognizionePubblico(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 400.0,
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
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 200.0,
                  child: custom_widgets.ValoreContext(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 200.0,
                  ),
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
