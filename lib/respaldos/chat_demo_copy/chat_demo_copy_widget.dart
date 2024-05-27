import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/chat_page_mobile/chat_page_mobile/chat_page_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'chat_demo_copy_model.dart';
export 'chat_demo_copy_model.dart';

class ChatDemoCopyWidget extends StatefulWidget {
  const ChatDemoCopyWidget({super.key});

  @override
  State<ChatDemoCopyWidget> createState() => _ChatDemoCopyWidgetState();
}

class _ChatDemoCopyWidgetState extends State<ChatDemoCopyWidget> {
  late ChatDemoCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatDemoCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xF2FFFFFF),
        body: wrapWithModel(
          model: _model.chatPageMobileModel,
          updateCallback: () => setState(() {}),
          child: const ChatPageMobileWidget(),
        ),
      ),
    );
  }
}
