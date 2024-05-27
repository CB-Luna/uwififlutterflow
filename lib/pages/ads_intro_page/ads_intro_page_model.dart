import '/desktop/ads_desktop/ads_intro_page_desktop/ads_intro_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_intro_page_mobile/ads_intro_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_intro_page_tablet/ads_intro_page_tablet_widget.dart';
import 'ads_intro_page_widget.dart' show AdsIntroPageWidget;
import 'package:flutter/material.dart';

class AdsIntroPageModel extends FlutterFlowModel<AdsIntroPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdsIntro_page_mobile component.
  late AdsIntroPageMobileModel adsIntroPageMobileModel;
  // Model for AdsIntro_page_tablet component.
  late AdsIntroPageTabletModel adsIntroPageTabletModel;
  // Model for AdsIntro_page_desktop component.
  late AdsIntroPageDesktopModel adsIntroPageDesktopModel;

  @override
  void initState(BuildContext context) {
    adsIntroPageMobileModel =
        createModel(context, () => AdsIntroPageMobileModel());
    adsIntroPageTabletModel =
        createModel(context, () => AdsIntroPageTabletModel());
    adsIntroPageDesktopModel =
        createModel(context, () => AdsIntroPageDesktopModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adsIntroPageMobileModel.dispose();
    adsIntroPageTabletModel.dispose();
    adsIntroPageDesktopModel.dispose();
  }
}
