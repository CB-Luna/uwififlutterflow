import '/desktop/layouts/desktop_layout_component/desktop_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dektop_layout_model.dart';
export 'dektop_layout_model.dart';

class DektopLayoutWidget extends StatefulWidget {
  const DektopLayoutWidget({super.key});

  @override
  State<DektopLayoutWidget> createState() => _DektopLayoutWidgetState();
}

class _DektopLayoutWidgetState extends State<DektopLayoutWidget> {
  late DektopLayoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DektopLayoutModel());

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
          child: wrapWithModel(
            model: _model.desktopLayoutComponentModel,
            updateCallback: () => setState(() {}),
            child: const DesktopLayoutComponentWidget(),
          ),
        ),
      ),
    );
  }
}
