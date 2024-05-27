import '/flutter_flow/flutter_flow_util.dart';
import 'welcome_copy_widget.dart' show WelcomeCopyWidget;
import 'package:flutter/material.dart';

class WelcomeCopyModel extends FlutterFlowModel<WelcomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
