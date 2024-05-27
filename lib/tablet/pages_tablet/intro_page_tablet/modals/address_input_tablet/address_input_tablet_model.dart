import '/flutter_flow/flutter_flow_util.dart';
import 'address_input_tablet_widget.dart' show AddressInputTabletWidget;
import 'package:flutter/material.dart';

class AddressInputTabletModel
    extends FlutterFlowModel<AddressInputTabletWidget> {
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
