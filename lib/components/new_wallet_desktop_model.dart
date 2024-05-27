import '/flutter_flow/flutter_flow_util.dart';
import 'new_wallet_desktop_widget.dart' show NewWalletDesktopWidget;
import 'package:flutter/material.dart';

class NewWalletDesktopModel extends FlutterFlowModel<NewWalletDesktopWidget> {
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
