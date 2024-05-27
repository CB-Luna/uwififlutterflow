import '/components/discover_desktop_widget.dart';
import '/components/discover_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'discover_widget.dart' show DiscoverWidget;
import 'package:flutter/material.dart';

class DiscoverModel extends FlutterFlowModel<DiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Discover_Desktop component.
  late DiscoverDesktopModel discoverDesktopModel;
  // Model for Discover_Mobile component.
  late DiscoverMobileModel discoverMobileModel;

  @override
  void initState(BuildContext context) {
    discoverDesktopModel = createModel(context, () => DiscoverDesktopModel());
    discoverMobileModel = createModel(context, () => DiscoverMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    discoverDesktopModel.dispose();
    discoverMobileModel.dispose();
  }
}
