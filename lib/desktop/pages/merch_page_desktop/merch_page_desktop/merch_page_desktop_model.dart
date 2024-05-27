import '/desktop/pages/merch_page_desktop/widgets/merch_page_content/merch_page_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'merch_page_desktop_widget.dart' show MerchPageDesktopWidget;
import 'package:flutter/material.dart';

class MerchPageDesktopModel extends FlutterFlowModel<MerchPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for merch_page_content component.
  late MerchPageContentModel merchPageContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    merchPageContentModel = createModel(context, () => MerchPageContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    merchPageContentModel.dispose();
  }
}
