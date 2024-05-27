import '/desktop/layouts/desktop_layout_component/desktop_layout_component_widget.dart';
import '/desktop/layouts/tablet_layout_component/tablet_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'main_layout_model.dart';
export 'main_layout_model.dart';

class MainLayoutWidget extends StatefulWidget {
  const MainLayoutWidget({super.key});

  @override
  State<MainLayoutWidget> createState() => _MainLayoutWidgetState();
}

class _MainLayoutWidgetState extends State<MainLayoutWidget> {
  late MainLayoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLayoutModel());

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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: wrapWithModel(
                    model: _model.desktopLayoutComponentModel,
                    updateCallback: () => setState(() {}),
                    child: const DesktopLayoutComponentWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Expanded(
                  child: wrapWithModel(
                    model: _model.tabletLayoutComponentModel,
                    updateCallback: () => setState(() {}),
                    child: const TabletLayoutComponentWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
