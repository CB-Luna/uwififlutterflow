import '/flutter_flow/flutter_flow_util.dart';
import 'payment_details_widget.dart' show PaymentDetailsWidget;
import 'package:flutter/material.dart';

class PaymentDetailsModel extends FlutterFlowModel<PaymentDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
