import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_mobile_widget.dart' show ChatPageMobileWidget;
import 'package:flutter/material.dart';

class ChatPageMobileModel extends FlutterFlowModel<ChatPageMobileWidget> {
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
