import '/flutter_flow/flutter_flow_util.dart';
import 'device_settings_widget.dart' show DeviceSettingsWidget;
import 'package:flutter/material.dart';

class DeviceSettingsModel extends FlutterFlowModel<DeviceSettingsWidget> {
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
