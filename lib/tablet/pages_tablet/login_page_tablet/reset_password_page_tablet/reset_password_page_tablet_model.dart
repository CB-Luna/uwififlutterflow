import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_page_tablet_widget.dart'
    show ResetPasswordPageTabletWidget;
import 'package:flutter/material.dart';

class ResetPasswordPageTabletModel
    extends FlutterFlowModel<ResetPasswordPageTabletWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();
  }
}
