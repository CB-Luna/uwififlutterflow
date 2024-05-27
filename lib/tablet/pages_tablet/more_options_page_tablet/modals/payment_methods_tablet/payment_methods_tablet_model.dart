import '/flutter_flow/flutter_flow_util.dart';
import 'payment_methods_tablet_widget.dart' show PaymentMethodsTabletWidget;
import 'package:flutter/material.dart';

class PaymentMethodsTabletModel
    extends FlutterFlowModel<PaymentMethodsTabletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
