import '/flutter_flow/flutter_flow_util.dart';
import 'more_copy_widget.dart' show MoreCopyWidget;
import 'package:flutter/material.dart';

class MoreCopyModel extends FlutterFlowModel<MoreCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
