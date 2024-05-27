import '/flutter_flow/flutter_flow_util.dart';
import 'my_devices_copy_widget.dart' show MyDevicesCopyWidget;
import 'package:flutter/material.dart';

class MyDevicesCopyModel extends FlutterFlowModel<MyDevicesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
