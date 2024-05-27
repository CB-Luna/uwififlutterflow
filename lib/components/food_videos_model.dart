import '/flutter_flow/flutter_flow_util.dart';
import 'food_videos_widget.dart' show FoodVideosWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FoodVideosModel extends FlutterFlowModel<FoodVideosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
