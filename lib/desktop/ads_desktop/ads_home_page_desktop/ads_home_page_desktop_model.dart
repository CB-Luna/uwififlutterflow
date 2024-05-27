import '/flutter_flow/flutter_flow_util.dart';
import 'ads_home_page_desktop_widget.dart' show AdsHomePageDesktopWidget;
import 'package:flutter/material.dart';

class AdsHomePageDesktopModel
    extends FlutterFlowModel<AdsHomePageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
