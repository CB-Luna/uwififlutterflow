import '/desktop/pages/my_device_page_desktop/widgets/my_device_page_content/my_device_page_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_device_page_desktop_widget.dart' show MyDevicePageDesktopWidget;
import 'package:flutter/material.dart';

class MyDevicePageDesktopModel
    extends FlutterFlowModel<MyDevicePageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for my_device_page_content component.
  late MyDevicePageContentModel myDevicePageContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    myDevicePageContentModel =
        createModel(context, () => MyDevicePageContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    myDevicePageContentModel.dispose();
  }
}
