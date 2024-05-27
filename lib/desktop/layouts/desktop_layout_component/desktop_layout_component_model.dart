import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'desktop_layout_component_widget.dart' show DesktopLayoutComponentWidget;
import 'package:flutter/material.dart';

class DesktopLayoutComponentModel
    extends FlutterFlowModel<DesktopLayoutComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for top_bar component.
  late TopBarModel topBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    topBarModel = createModel(context, () => TopBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    topBarModel.dispose();
  }
}
