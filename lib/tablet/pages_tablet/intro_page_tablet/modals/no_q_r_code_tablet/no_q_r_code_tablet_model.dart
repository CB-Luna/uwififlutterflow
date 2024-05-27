import '/flutter_flow/flutter_flow_util.dart';
import 'no_q_r_code_tablet_widget.dart' show NoQRCodeTabletWidget;
import 'package:flutter/material.dart';

class NoQRCodeTabletModel extends FlutterFlowModel<NoQRCodeTabletWidget> {
  ///  State fields for stateful widgets in this page.

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
