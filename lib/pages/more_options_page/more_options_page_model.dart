import '/desktop/pages/more_options_page_desktop/more_options_page_desktop/more_options_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/more_options_page_mobile/more_options_page_mobile/more_options_page_mobile_widget.dart';
import '/tablet/pages_tablet/more_options_page_tablet/more_options_page_tablet/more_options_page_tablet_widget.dart';
import 'more_options_page_widget.dart' show MoreOptionsPageWidget;
import 'package:flutter/material.dart';

class MoreOptionsPageModel extends FlutterFlowModel<MoreOptionsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for more_options_page_desktop component.
  late MoreOptionsPageDesktopModel moreOptionsPageDesktopModel;
  // Model for more_options_page_tablet component.
  late MoreOptionsPageTabletModel moreOptionsPageTabletModel;
  // Model for more_options_page_mobile component.
  late MoreOptionsPageMobileModel moreOptionsPageMobileModel;

  @override
  void initState(BuildContext context) {
    moreOptionsPageDesktopModel =
        createModel(context, () => MoreOptionsPageDesktopModel());
    moreOptionsPageTabletModel =
        createModel(context, () => MoreOptionsPageTabletModel());
    moreOptionsPageMobileModel =
        createModel(context, () => MoreOptionsPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    moreOptionsPageDesktopModel.dispose();
    moreOptionsPageTabletModel.dispose();
    moreOptionsPageMobileModel.dispose();
  }
}
