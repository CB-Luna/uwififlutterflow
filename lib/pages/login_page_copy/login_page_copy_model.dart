import '/desktop/pages/login_page_desktop/login_page_desktop/login_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/login_page_mobile/login_page_mobile/login_page_mobile_widget.dart';
import '/tablet/pages_tablet/login_page_tablet/login_page_tablet/login_page_tablet_widget.dart';
import 'login_page_copy_widget.dart' show LoginPageCopyWidget;
import 'package:flutter/material.dart';

class LoginPageCopyModel extends FlutterFlowModel<LoginPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for login_page_desktop component.
  late LoginPageDesktopModel loginPageDesktopModel;
  // Model for login_page_tablet component.
  late LoginPageTabletModel loginPageTabletModel;
  // Model for login_page_mobile component.
  late LoginPageMobileModel loginPageMobileModel;

  @override
  void initState(BuildContext context) {
    loginPageDesktopModel = createModel(context, () => LoginPageDesktopModel());
    loginPageTabletModel = createModel(context, () => LoginPageTabletModel());
    loginPageMobileModel = createModel(context, () => LoginPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginPageDesktopModel.dispose();
    loginPageTabletModel.dispose();
    loginPageMobileModel.dispose();
  }
}
