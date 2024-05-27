import '/desktop/pages/login_page_desktop/widgets/gradient_container/gradient_container_widget.dart';
import '/desktop/pages/login_page_desktop/widgets/login_container/login_container_widget.dart';
import '/desktop/pages/login_page_desktop/widgets/singup_container/singup_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_desktop_widget.dart' show LoginPageDesktopWidget;
import 'package:flutter/material.dart';

class LoginPageDesktopModel extends FlutterFlowModel<LoginPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for login_container component.
  late LoginContainerModel loginContainerModel;
  // Model for singup_container component.
  late SingupContainerModel singupContainerModel;
  // Model for gradient_container component.
  late GradientContainerModel gradientContainerModel;

  @override
  void initState(BuildContext context) {
    loginContainerModel = createModel(context, () => LoginContainerModel());
    singupContainerModel = createModel(context, () => SingupContainerModel());
    gradientContainerModel =
        createModel(context, () => GradientContainerModel());
  }

  @override
  void dispose() {
    loginContainerModel.dispose();
    singupContainerModel.dispose();
    gradientContainerModel.dispose();
  }
}
