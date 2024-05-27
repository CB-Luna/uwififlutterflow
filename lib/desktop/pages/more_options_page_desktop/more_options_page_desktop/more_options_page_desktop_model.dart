import '/desktop/pages/more_options_page_desktop/widgets/more_options_content/more_options_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'more_options_page_desktop_widget.dart'
    show MoreOptionsPageDesktopWidget;
import 'package:flutter/material.dart';

class MoreOptionsPageDesktopModel
    extends FlutterFlowModel<MoreOptionsPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for more_options_content component.
  late MoreOptionsContentModel moreOptionsContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    moreOptionsContentModel =
        createModel(context, () => MoreOptionsContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    moreOptionsContentModel.dispose();
  }
}
