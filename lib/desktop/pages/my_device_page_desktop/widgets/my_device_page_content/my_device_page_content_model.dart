import '/desktop/pages/my_device_page_desktop/widgets/device/device_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_device_page_content_widget.dart' show MyDevicePageContentWidget;
import 'package:flutter/material.dart';

class MyDevicePageContentModel
    extends FlutterFlowModel<MyDevicePageContentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for device component.
  late DeviceModel deviceModel1;
  // Model for device component.
  late DeviceModel deviceModel2;
  // Model for device component.
  late DeviceModel deviceModel3;

  @override
  void initState(BuildContext context) {
    deviceModel1 = createModel(context, () => DeviceModel());
    deviceModel2 = createModel(context, () => DeviceModel());
    deviceModel3 = createModel(context, () => DeviceModel());
  }

  @override
  void dispose() {
    deviceModel1.dispose();
    deviceModel2.dispose();
    deviceModel3.dispose();
  }
}
