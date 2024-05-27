import '/flutter_flow/flutter_flow_util.dart';
import 'payment_methods_widget.dart' show PaymentMethodsWidget;
import 'package:flutter/material.dart';

class PaymentMethodsModel extends FlutterFlowModel<PaymentMethodsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
