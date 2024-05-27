import '/desktop/pages/more_options_page_desktop/widgets/speedtest_content/speedtest_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'speed_test_desktop_component_model.dart';
export 'speed_test_desktop_component_model.dart';

class SpeedTestDesktopComponentWidget extends StatefulWidget {
  const SpeedTestDesktopComponentWidget({super.key});

  @override
  State<SpeedTestDesktopComponentWidget> createState() =>
      _SpeedTestDesktopComponentWidgetState();
}

class _SpeedTestDesktopComponentWidgetState
    extends State<SpeedTestDesktopComponentWidget> {
  late SpeedTestDesktopComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeedTestDesktopComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
        tabletLandscape: false,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      height: 1059.0,
                      constraints: const BoxConstraints(
                        minWidth: 280.0,
                        maxWidth: 350.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: wrapWithModel(
                          model: _model.sideBarModel,
                          updateCallback: () => setState(() {}),
                          child: const SideBarWidget(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.topBarModel,
                          updateCallback: () => setState(() {}),
                          child: const TopBarWidget(),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: wrapWithModel(
                                    model: _model.speedtestContentModel,
                                    updateCallback: () => setState(() {}),
                                    child: const SpeedtestContentWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
