import '/desktop/pages/network_page_desktop/network_page_desktop/network_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/network_page_mobile/network_page_mobile/network_page_mobile_widget.dart';
import '/tablet/pages_tablet/network_page_tablet/network_page_tablet/network_page_tablet_widget.dart';
import 'network_page_widget.dart' show NetworkPageWidget;
import 'package:flutter/material.dart';

class NetworkPageModel extends FlutterFlowModel<NetworkPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for network_page_desktop component.
  late NetworkPageDesktopModel networkPageDesktopModel;
  // Model for network_page_tablet component.
  late NetworkPageTabletModel networkPageTabletModel;
  // Model for network_page_mobile component.
  late NetworkPageMobileModel networkPageMobileModel;

  @override
  void initState(BuildContext context) {
    networkPageDesktopModel =
        createModel(context, () => NetworkPageDesktopModel());
    networkPageTabletModel =
        createModel(context, () => NetworkPageTabletModel());
    networkPageMobileModel =
        createModel(context, () => NetworkPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    networkPageDesktopModel.dispose();
    networkPageTabletModel.dispose();
    networkPageMobileModel.dispose();
  }
}
