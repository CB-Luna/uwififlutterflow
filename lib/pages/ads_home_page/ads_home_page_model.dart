import '/desktop/ads_desktop/ads_home_page_desktop/ads_home_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_home_page_mobile/ads_home_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_home_page_tablet/ads_home_page_tablet_widget.dart';
import 'ads_home_page_widget.dart' show AdsHomePageWidget;
import 'package:flutter/material.dart';

class AdsHomePageModel extends FlutterFlowModel<AdsHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdsHome_page_mobile component.
  late AdsHomePageMobileModel adsHomePageMobileModel;
  // Model for AdsHome_page_tablet component.
  late AdsHomePageTabletModel adsHomePageTabletModel;
  // Model for AdsHome_page_Desktop component.
  late AdsHomePageDesktopModel adsHomePageDesktopModel;

  @override
  void initState(BuildContext context) {
    adsHomePageMobileModel =
        createModel(context, () => AdsHomePageMobileModel());
    adsHomePageTabletModel =
        createModel(context, () => AdsHomePageTabletModel());
    adsHomePageDesktopModel =
        createModel(context, () => AdsHomePageDesktopModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adsHomePageMobileModel.dispose();
    adsHomePageTabletModel.dispose();
    adsHomePageDesktopModel.dispose();
  }
}
