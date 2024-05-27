import '/desktop/pages/more_options_page_desktop/widgets/speedtest_content/speedtest_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'speed_test_desktop_component_widget.dart'
    show SpeedTestDesktopComponentWidget;
import 'package:flutter/material.dart';

class SpeedTestDesktopComponentModel
    extends FlutterFlowModel<SpeedTestDesktopComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for speedtest_content component.
  late SpeedtestContentModel speedtestContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    speedtestContentModel = createModel(context, () => SpeedtestContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    speedtestContentModel.dispose();
  }
}
