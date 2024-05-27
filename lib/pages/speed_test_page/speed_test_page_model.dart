import '/desktop/pages/more_options_page_desktop/modals/speed_test_desktop_component/speed_test_desktop_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/more_options_page_mobile/modals/speedtest/speedtest_widget.dart';
import '/tablet/pages_tablet/more_options_page_tablet/modals/speed_test_tablet/speed_test_tablet_widget.dart';
import 'speed_test_page_widget.dart' show SpeedTestPageWidget;
import 'package:flutter/material.dart';

class SpeedTestPageModel extends FlutterFlowModel<SpeedTestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for speedtest component.
  late SpeedtestModel speedtestModel;
  // Model for SpeedTest_tablet component.
  late SpeedTestTabletModel speedTestTabletModel;
  // Model for speed_test_desktop_component component.
  late SpeedTestDesktopComponentModel speedTestDesktopComponentModel;

  @override
  void initState(BuildContext context) {
    speedtestModel = createModel(context, () => SpeedtestModel());
    speedTestTabletModel = createModel(context, () => SpeedTestTabletModel());
    speedTestDesktopComponentModel =
        createModel(context, () => SpeedTestDesktopComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    speedtestModel.dispose();
    speedTestTabletModel.dispose();
    speedTestDesktopComponentModel.dispose();
  }
}
