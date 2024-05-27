import '/flutter_flow/flutter_flow_util.dart';
import 'payment_details_tablet_widget.dart' show PaymentDetailsTabletWidget;
import 'package:flutter/material.dart';

class PaymentDetailsTabletModel
    extends FlutterFlowModel<PaymentDetailsTabletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
