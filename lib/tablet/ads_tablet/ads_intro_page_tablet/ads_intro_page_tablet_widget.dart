import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'ads_intro_page_tablet_model.dart';
export 'ads_intro_page_tablet_model.dart';

class AdsIntroPageTabletWidget extends StatefulWidget {
  const AdsIntroPageTabletWidget({super.key});

  @override
  State<AdsIntroPageTabletWidget> createState() =>
      _AdsIntroPageTabletWidgetState();
}

class _AdsIntroPageTabletWidgetState extends State<AdsIntroPageTabletWidget> {
  late AdsIntroPageTabletModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsIntroPageTabletModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        desktop: false,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/AdsDemo.png',
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.6,
              fit: BoxFit.contain,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.85,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Watch, Earn & Redeem!',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Transform your time into real value! With U-wifi app, every ad you watch brings you closer to your favorite products. Start earning now!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Ads_Home_page');
                        },
                        text: 'Get Started',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 48.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: 'Go Back',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 48.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).accent1,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
