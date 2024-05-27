import '/backend/api_requests/api_calls.dart';
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
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode1;
  TextEditingController? passwordLoginTextController1;
  late bool passwordLoginVisibility1;
  String? Function(BuildContext, String?)?
      passwordLoginTextController1Validator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode2;
  TextEditingController? passwordLoginTextController2;
  late bool passwordLoginVisibility2;
  String? Function(BuildContext, String?)?
      passwordLoginTextController2Validator;
  // Stores action output result for [Backend Call - API (LoginAPI)] action in Button widget.
  ApiCallResponse? apiResulta11;

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility1 = false;
    passwordLoginVisibility2 = false;
  }

  @override
  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode1?.dispose();
    passwordLoginTextController1?.dispose();

    passwordLoginFocusNode2?.dispose();
    passwordLoginTextController2?.dispose();
  }
}
