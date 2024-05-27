import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'scan_q_r_code_model.dart';
export 'scan_q_r_code_model.dart';

class ScanQRCodeWidget extends StatefulWidget {
  const ScanQRCodeWidget({super.key});

  @override
  State<ScanQRCodeWidget> createState() => _ScanQRCodeWidgetState();
}

class _ScanQRCodeWidgetState extends State<ScanQRCodeWidget> {
  late ScanQRCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanQRCodeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final selectedMedia = await selectMediaWithSourceBottomSheet(
        context: context,
        allowPhoto: true,
      );
      if (selectedMedia != null &&
          selectedMedia
              .every((m) => validateFileFormat(m.storagePath, context))) {
        setState(() => _model.isDataUploading1 = true);
        var selectedUploadedFiles = <FFUploadedFile>[];

        try {
          selectedUploadedFiles = selectedMedia
              .map((m) => FFUploadedFile(
                    name: m.storagePath.split('/').last,
                    bytes: m.bytes,
                    height: m.dimensions?.height,
                    width: m.dimensions?.width,
                    blurHash: m.blurHash,
                  ))
              .toList();
        } finally {
          _model.isDataUploading1 = false;
        }
        if (selectedUploadedFiles.length == selectedMedia.length) {
          setState(() {
            _model.uploadedLocalFile1 = selectedUploadedFiles.first;
          });
        } else {
          setState(() {});
          return;
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('ConnectGateway');
                },
                text: '',
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
                options: FFButtonOptions(
                  width: 80.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF57636C),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: '',
                    icon: Icon(
                      Icons.phone_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 25.0,
                    ),
                    options: FFButtonOptions(
                      width: 70.0,
                      height: 32.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Scan the QR Code',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('GatewayConnectionStatus');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Lottie.asset(
                      'assets/lottie_animations/Animation_-_1702932326546.json',
                      width: MediaQuery.sizeOf(context).width * 0.6,
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      fit: BoxFit.cover,
                      repeat: false,
                      animate: true,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                      child: FaIcon(
                        FontAwesomeIcons.pauseCircle,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AutoSizeText(
              'Next you\'ll be prompted to use your\nphone\'s camera to scan the QR\ncode on the gateway (please allow access to your phone\'s camera).',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading2 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        _model.isDataUploading2 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFile2 =
                              selectedUploadedFiles.first;
                        });
                      } else {
                        setState(() {});
                        return;
                      }
                    }
                  },
                  text: 'Scan QR Code',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 52.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('NoQRCode');
                  },
                  text: 'No QR Code? Enter manually',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 52.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            AutoSizeText(
              'What\'s a QR Code?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).secondary,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
