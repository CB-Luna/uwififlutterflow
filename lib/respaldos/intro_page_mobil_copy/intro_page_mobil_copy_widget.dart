import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/intro_page_mobile/intro_page_mobile/intro_page_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'intro_page_mobil_copy_model.dart';
export 'intro_page_mobil_copy_model.dart';

class IntroPageMobilCopyWidget extends StatefulWidget {
  const IntroPageMobilCopyWidget({super.key});

  @override
  State<IntroPageMobilCopyWidget> createState() =>
      _IntroPageMobilCopyWidgetState();
}

class _IntroPageMobilCopyWidgetState extends State<IntroPageMobilCopyWidget> {
  late IntroPageMobilCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroPageMobilCopyModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: wrapWithModel(
          model: _model.introPageMobileModel,
          updateCallback: () => setState(() {}),
          child: const IntroPageMobileWidget(),
        ),
      ),
    );
  }
}
