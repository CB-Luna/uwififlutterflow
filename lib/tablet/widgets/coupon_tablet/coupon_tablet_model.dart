import '/flutter_flow/flutter_flow_util.dart';
import 'coupon_tablet_widget.dart' show CouponTabletWidget;
import 'package:flutter/material.dart';

class CouponTabletModel extends FlutterFlowModel<CouponTabletWidget> {
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
