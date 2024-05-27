import '/desktop/layouts/tablet_layout_component/tablet_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tablet_layout_model.dart';
export 'tablet_layout_model.dart';

class TabletLayoutWidget extends StatefulWidget {
  const TabletLayoutWidget({super.key});

  @override
  State<TabletLayoutWidget> createState() => _TabletLayoutWidgetState();
}

class _TabletLayoutWidgetState extends State<TabletLayoutWidget> {
  late TabletLayoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletLayoutModel());

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
            model: _model.tabletLayoutComponentModel,
            updateCallback: () => setState(() {}),
            child: const TabletLayoutComponentWidget(),
          ),
        ),
      ),
    );
  }
}
