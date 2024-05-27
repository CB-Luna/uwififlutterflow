import '/desktop/pages/merch_page_desktop/merch_page_desktop/merch_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/merch_page_mobile/merch_page_mobile/merch_page_mobile_widget.dart';
import '/tablet/pages_tablet/merch_page_tablet/merch_page_tablet/merch_page_tablet_widget.dart';
import 'merch_page_widget.dart' show MerchPageWidget;
import 'package:flutter/material.dart';

class MerchPageModel extends FlutterFlowModel<MerchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for merch_page_desktop component.
  late MerchPageDesktopModel merchPageDesktopModel;
  // Model for merch_page_tablet component.
  late MerchPageTabletModel merchPageTabletModel;
  // Model for merch_page_mobile component.
  late MerchPageMobileModel merchPageMobileModel;

  @override
  void initState(BuildContext context) {
    merchPageDesktopModel = createModel(context, () => MerchPageDesktopModel());
    merchPageTabletModel = createModel(context, () => MerchPageTabletModel());
    merchPageMobileModel = createModel(context, () => MerchPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    merchPageDesktopModel.dispose();
    merchPageTabletModel.dispose();
    merchPageMobileModel.dispose();
  }
}
