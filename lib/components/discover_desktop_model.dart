import '/flutter_flow/flutter_flow_util.dart';
import 'discover_desktop_widget.dart' show DiscoverDesktopWidget;
import 'package:flutter/material.dart';

class DiscoverDesktopModel extends FlutterFlowModel<DiscoverDesktopWidget> {
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
