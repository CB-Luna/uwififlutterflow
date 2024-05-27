import '/desktop/layouts/desktop_layout_component/desktop_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dektop_layout_widget.dart' show DektopLayoutWidget;
import 'package:flutter/material.dart';

class DektopLayoutModel extends FlutterFlowModel<DektopLayoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopLayoutComponent component.
  late DesktopLayoutComponentModel desktopLayoutComponentModel;

  @override
  void initState(BuildContext context) {
    desktopLayoutComponentModel =
        createModel(context, () => DesktopLayoutComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopLayoutComponentModel.dispose();
  }
}
