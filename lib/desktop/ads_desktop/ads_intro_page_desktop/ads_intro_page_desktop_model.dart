import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ads_intro_page_desktop_widget.dart' show AdsIntroPageDesktopWidget;
import 'package:flutter/material.dart';

class AdsIntroPageDesktopModel
    extends FlutterFlowModel<AdsIntroPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
  }
}
