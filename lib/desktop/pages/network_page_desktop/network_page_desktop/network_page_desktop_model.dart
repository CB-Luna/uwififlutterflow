import '/desktop/pages/network_page_desktop/widgets/network_page_content/network_page_content_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'network_page_desktop_widget.dart' show NetworkPageDesktopWidget;
import 'package:flutter/material.dart';

class NetworkPageDesktopModel
    extends FlutterFlowModel<NetworkPageDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for network_page_content component.
  late NetworkPageContentModel networkPageContentModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    networkPageContentModel =
        createModel(context, () => NetworkPageContentModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
    networkPageContentModel.dispose();
  }
}
