import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/support_page_mobile/support_page_mobile/support_page_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'support_copy2_copy_model.dart';
export 'support_copy2_copy_model.dart';

class SupportCopy2CopyWidget extends StatefulWidget {
  const SupportCopy2CopyWidget({super.key});

  @override
  State<SupportCopy2CopyWidget> createState() => _SupportCopy2CopyWidgetState();
}

class _SupportCopy2CopyWidgetState extends State<SupportCopy2CopyWidget> {
  late SupportCopy2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportCopy2CopyModel());

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
        body: wrapWithModel(
          model: _model.supportPageMobileModel,
          updateCallback: () => setState(() {}),
          child: const SupportPageMobileWidget(),
        ),
      ),
    );
  }
}
