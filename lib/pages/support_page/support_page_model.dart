import '/desktop/pages/support_page_desktop/support_page_desktop/support_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/support_page_mobile/support_page_mobile/support_page_mobile_widget.dart';
import '/tablet/pages_tablet/support_page_tablet/support_page_tablet/support_page_tablet_widget.dart';
import 'support_page_widget.dart' show SupportPageWidget;
import 'package:flutter/material.dart';

class SupportPageModel extends FlutterFlowModel<SupportPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for support_page_desktop component.
  late SupportPageDesktopModel supportPageDesktopModel;
  // Model for support_page_tablet component.
  late SupportPageTabletModel supportPageTabletModel;
  // Model for support_page_mobile component.
  late SupportPageMobileModel supportPageMobileModel;

  @override
  void initState(BuildContext context) {
    supportPageDesktopModel =
        createModel(context, () => SupportPageDesktopModel());
    supportPageTabletModel =
        createModel(context, () => SupportPageTabletModel());
    supportPageMobileModel =
        createModel(context, () => SupportPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    supportPageDesktopModel.dispose();
    supportPageTabletModel.dispose();
    supportPageMobileModel.dispose();
  }
}
