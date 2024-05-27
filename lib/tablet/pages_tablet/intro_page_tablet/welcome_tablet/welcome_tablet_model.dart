import '/flutter_flow/flutter_flow_util.dart';
import 'welcome_tablet_widget.dart' show WelcomeTabletWidget;
import 'package:flutter/material.dart';

class WelcomeTabletModel extends FlutterFlowModel<WelcomeTabletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
