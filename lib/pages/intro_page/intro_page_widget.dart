import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/intro_page_mobile/intro_page_mobile/intro_page_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'intro_page_model.dart';
export 'intro_page_model.dart';

class IntroPageWidget extends StatefulWidget {
  const IntroPageWidget({super.key});

  @override
  State<IntroPageWidget> createState() => _IntroPageWidgetState();
}

class _IntroPageWidgetState extends State<IntroPageWidget> {
  late IntroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: wrapWithModel(
                  model: _model.introPageMobileModel,
                  updateCallback: () => setState(() {}),
                  child: const IntroPageMobileWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
