import '/flutter_flow/flutter_flow_util.dart';
import 'plan_checkout_widget.dart' show PlanCheckoutWidget;
import 'package:flutter/material.dart';

class PlanCheckoutModel extends FlutterFlowModel<PlanCheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
