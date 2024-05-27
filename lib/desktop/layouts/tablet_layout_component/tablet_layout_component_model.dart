import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/widgets/tap_bar/tap_bar_widget.dart';
import 'tablet_layout_component_widget.dart' show TabletLayoutComponentWidget;
import 'package:flutter/material.dart';

class TabletLayoutComponentModel
    extends FlutterFlowModel<TabletLayoutComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for side_bar component.
  late SideBarModel sideBarModel;
  // Model for TapBar component.
  late TapBarModel tapBarModel1;
  // Model for top_bar component.
  late TopBarModel topBarModel;
  // Model for TapBar component.
  late TapBarModel tapBarModel2;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    tapBarModel1 = createModel(context, () => TapBarModel());
    topBarModel = createModel(context, () => TopBarModel());
    tapBarModel2 = createModel(context, () => TapBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    tapBarModel1.dispose();
    topBarModel.dispose();
    tapBarModel2.dispose();
  }
}
