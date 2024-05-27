import '/desktop/pages/more_options_page_desktop/modals/speed_test_desktop_component/speed_test_desktop_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/more_options_page_mobile/modals/speedtest/speedtest_widget.dart';
import '/tablet/pages_tablet/more_options_page_tablet/modals/speed_test_tablet/speed_test_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'speed_test_page_model.dart';
export 'speed_test_page_model.dart';

class SpeedTestPageWidget extends StatefulWidget {
  const SpeedTestPageWidget({super.key});

  @override
  State<SpeedTestPageWidget> createState() => _SpeedTestPageWidgetState();
}

class _SpeedTestPageWidgetState extends State<SpeedTestPageWidget> {
  late SpeedTestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeedTestPageModel());

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
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.speedtestModel,
                updateCallback: () => setState(() {}),
                child: const SpeedtestWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.speedTestTabletModel,
                updateCallback: () => setState(() {}),
                child: const SpeedTestTabletWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Expanded(
                child: wrapWithModel(
                  model: _model.speedTestDesktopComponentModel,
                  updateCallback: () => setState(() {}),
                  child: const SpeedTestDesktopComponentWidget(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
