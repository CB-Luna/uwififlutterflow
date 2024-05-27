import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_search_page_mobile/ads_search_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_search_page_tablet/ads_search_page_tablet_widget.dart';
import 'ads_search_page_widget.dart' show AdsSearchPageWidget;
import 'package:flutter/material.dart';

class AdsSearchPageModel extends FlutterFlowModel<AdsSearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdsSearch_page_mobile component.
  late AdsSearchPageMobileModel adsSearchPageMobileModel;
  // Model for AdsSearch_page_tablet component.
  late AdsSearchPageTabletModel adsSearchPageTabletModel;

  @override
  void initState(BuildContext context) {
    adsSearchPageMobileModel =
        createModel(context, () => AdsSearchPageMobileModel());
    adsSearchPageTabletModel =
        createModel(context, () => AdsSearchPageTabletModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adsSearchPageMobileModel.dispose();
    adsSearchPageTabletModel.dispose();
  }
}
