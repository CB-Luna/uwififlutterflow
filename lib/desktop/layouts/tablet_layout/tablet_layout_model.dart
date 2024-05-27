import '/desktop/layouts/tablet_layout_component/tablet_layout_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tablet_layout_widget.dart' show TabletLayoutWidget;
import 'package:flutter/material.dart';

class TabletLayoutModel extends FlutterFlowModel<TabletLayoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TabletLayoutComponent component.
  late TabletLayoutComponentModel tabletLayoutComponentModel;

  @override
  void initState(BuildContext context) {
    tabletLayoutComponentModel =
        createModel(context, () => TabletLayoutComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabletLayoutComponentModel.dispose();
  }
}
