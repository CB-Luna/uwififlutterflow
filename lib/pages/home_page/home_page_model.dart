import '/desktop/pages/home/home_desktop/home_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/home_page_mobile/home_mobile/home_mobile_widget.dart';
import '/tablet/pages_tablet/home_page_tablet/home_tablet/home_tablet_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Home_desktop component.
  late HomeDesktopModel homeDesktopModel;
  // Model for home_tablet component.
  late HomeTabletModel homeTabletModel;
  // Model for home_mobile component.
  late HomeMobileModel homeMobileModel;

  @override
  void initState(BuildContext context) {
    homeDesktopModel = createModel(context, () => HomeDesktopModel());
    homeTabletModel = createModel(context, () => HomeTabletModel());
    homeMobileModel = createModel(context, () => HomeMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeDesktopModel.dispose();
    homeTabletModel.dispose();
    homeMobileModel.dispose();
  }
}
