import '/flutter_flow/flutter_flow_util.dart';
import 'device_settings_tablet_widget.dart' show DeviceSettingsTabletWidget;
import 'package:flutter/material.dart';

class DeviceSettingsTabletModel
    extends FlutterFlowModel<DeviceSettingsTabletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
