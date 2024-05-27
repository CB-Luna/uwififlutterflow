import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/chat_page_mobile/chat_page_mobile/chat_page_mobile_widget.dart';
import 'chat_demo_copy_widget.dart' show ChatDemoCopyWidget;
import 'package:flutter/material.dart';

class ChatDemoCopyModel extends FlutterFlowModel<ChatDemoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chat_page_mobile component.
  late ChatPageMobileModel chatPageMobileModel;

  @override
  void initState(BuildContext context) {
    chatPageMobileModel = createModel(context, () => ChatPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatPageMobileModel.dispose();
  }
}
