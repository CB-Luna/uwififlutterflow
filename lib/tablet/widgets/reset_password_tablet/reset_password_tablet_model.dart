import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_tablet_widget.dart' show ResetPasswordTabletWidget;
import 'package:flutter/material.dart';

class ResetPasswordTabletModel
    extends FlutterFlowModel<ResetPasswordTabletWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}
