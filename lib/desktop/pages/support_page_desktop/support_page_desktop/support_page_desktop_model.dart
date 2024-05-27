import '/desktop/pages/support_page_desktop/widgets/support_page_content/support_page_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'support_page_desktop_widget.dart' show SupportPageDesktopWidget;
import 'package:flutter/material.dart';

class SupportPageDesktopModel
    extends FlutterFlowModel<SupportPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for support_page_content component.
  late SupportPageContentModel supportPageContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    supportPageContentModel =
        createModel(context, () => SupportPageContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    supportPageContentModel.dispose();
  }
}
