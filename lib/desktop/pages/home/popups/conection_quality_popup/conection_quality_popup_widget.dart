import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'conection_quality_popup_model.dart';
export 'conection_quality_popup_model.dart';

class ConectionQualityPopupWidget extends StatefulWidget {
  const ConectionQualityPopupWidget({super.key});

  @override
  State<ConectionQualityPopupWidget> createState() =>
      _ConectionQualityPopupWidgetState();
}

class _ConectionQualityPopupWidgetState
    extends State<ConectionQualityPopupWidget> {
  late ConectionQualityPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConectionQualityPopupModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 600.0,
          maxHeight: 600.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chevron_left_rounded,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 40.0,
                  ),
                  Flexible(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Connection Quality',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 34.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'The service bars and connection quality rating represent the strength of your gateway\'s  connection to the internet.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'Tips to improve your \nconnection quality:',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Flexible(
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      '• Find an ideal spot for your gateway using our interactive placement assistant.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 3.0,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Launch placement assistant',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondary,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Text(
                      '• Try placing the gateway in different locations to find the best signal.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      '• Keep the gateway away from metal obstructions and direct sunlight.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      '• Make sure your gateway is not underneath or behind furniture (such as in a drawer or behind your tv).',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Close',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
