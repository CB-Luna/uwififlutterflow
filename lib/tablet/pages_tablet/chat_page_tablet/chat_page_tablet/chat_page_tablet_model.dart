import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_tablet_widget.dart' show ChatPageTabletWidget;
import 'package:flutter/material.dart';

class ChatPageTabletModel extends FlutterFlowModel<ChatPageTabletWidget> {
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
