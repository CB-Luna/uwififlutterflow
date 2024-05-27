import '/flutter_flow/flutter_flow_util.dart';
import 'coupon_widget.dart' show CouponWidget;
import 'package:flutter/material.dart';

class CouponModel extends FlutterFlowModel<CouponWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
