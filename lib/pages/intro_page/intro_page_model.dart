import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/intro_page_mobile/intro_page_mobile/intro_page_mobile_widget.dart';
import 'intro_page_widget.dart' show IntroPageWidget;
import 'package:flutter/material.dart';

class IntroPageModel extends FlutterFlowModel<IntroPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for intro_page_mobile component.
  late IntroPageMobileModel introPageMobileModel;

  @override
  void initState(BuildContext context) {
    introPageMobileModel = createModel(context, () => IntroPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    introPageMobileModel.dispose();
  }
}
