import '/components/discover_desktop_widget.dart';
import '/components/discover_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'discover_model.dart';
export 'discover_model.dart';

class DiscoverWidget extends StatefulWidget {
  const DiscoverWidget({super.key});

  @override
  State<DiscoverWidget> createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  late DiscoverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscoverModel());

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
        body: Column(
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
                  model: _model.discoverDesktopModel,
                  updateCallback: () => setState(() {}),
                  child: const DiscoverDesktopWidget(),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.discoverMobileModel,
                updateCallback: () => setState(() {}),
                child: const DiscoverMobileWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
