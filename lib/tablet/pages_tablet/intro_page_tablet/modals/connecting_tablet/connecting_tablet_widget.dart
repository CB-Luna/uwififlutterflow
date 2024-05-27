import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'connecting_tablet_model.dart';
export 'connecting_tablet_model.dart';

class ConnectingTabletWidget extends StatefulWidget {
  const ConnectingTabletWidget({super.key});

  @override
  State<ConnectingTabletWidget> createState() => _ConnectingTabletWidgetState();
}

class _ConnectingTabletWidgetState extends State<ConnectingTabletWidget> {
  late ConnectingTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConnectingTabletModel());

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
              actions: const [],
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
                    'Connecting to Gateway',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 10.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onLongPress: () async {
                  context.pushNamed('AlmostThere');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/k7eg7_8.png',
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            AutoSizeText(
              'Please wait while we prepare your gateway...',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 25.0,
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
