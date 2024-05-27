import '/desktop/layouts/desktop_layout_component/desktop_layout_component_widget.dart';
import '/desktop/layouts/tablet_layout_component/tablet_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_layout_widget.dart' show MainLayoutWidget;
import 'package:flutter/material.dart';

class MainLayoutModel extends FlutterFlowModel<MainLayoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopLayoutComponent component.
  late DesktopLayoutComponentModel desktopLayoutComponentModel;
  // Model for TabletLayoutComponent component.
  late TabletLayoutComponentModel tabletLayoutComponentModel;

  @override
  void initState(BuildContext context) {
    desktopLayoutComponentModel =
        createModel(context, () => DesktopLayoutComponentModel());
    tabletLayoutComponentModel =
        createModel(context, () => TabletLayoutComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopLayoutComponentModel.dispose();
    tabletLayoutComponentModel.dispose();
  }
}
