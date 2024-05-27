import '/desktop/pages/my_device_page_desktop/my_device_page_desktop/my_device_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/my_device_page_mobile/my_device_page_mobile/my_device_page_mobile_widget.dart';
import '/tablet/pages_tablet/my_device_page_tablet/my_device_page_tablet/my_device_page_tablet_widget.dart';
import 'my_device_page_widget.dart' show MyDevicePageWidget;
import 'package:flutter/material.dart';

class MyDevicePageModel extends FlutterFlowModel<MyDevicePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for my_device_page_desktop component.
  late MyDevicePageDesktopModel myDevicePageDesktopModel;
  // Model for my_device_page_tablet component.
  late MyDevicePageTabletModel myDevicePageTabletModel;
  // Model for my_device_page_mobile component.
  late MyDevicePageMobileModel myDevicePageMobileModel;

  @override
  void initState(BuildContext context) {
    myDevicePageDesktopModel =
        createModel(context, () => MyDevicePageDesktopModel());
    myDevicePageTabletModel =
        createModel(context, () => MyDevicePageTabletModel());
    myDevicePageMobileModel =
        createModel(context, () => MyDevicePageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    myDevicePageDesktopModel.dispose();
    myDevicePageTabletModel.dispose();
    myDevicePageMobileModel.dispose();
  }
}
