import '/flutter_flow/flutter_flow_util.dart';
import 'speed_test_copy_widget.dart' show SpeedTestCopyWidget;
import 'package:flutter/material.dart';

class SpeedTestCopyModel extends FlutterFlowModel<SpeedTestCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
