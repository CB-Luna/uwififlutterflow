import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_mobile_widget.dart' show LoginPageMobileWidget;
import 'package:flutter/material.dart';

class LoginPageMobileModel extends FlutterFlowModel<LoginPageMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  // Stores action output result for [Backend Call - API (LoginAPI)] action in Button widget.
  ApiCallResponse? apiResulta11;
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
    passwordLoginVisibility = false;
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}
