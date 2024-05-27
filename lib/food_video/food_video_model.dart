import '/components/food_videos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_video_widget.dart' show FoodVideoWidget;
import 'package:flutter/material.dart';

class FoodVideoModel extends FlutterFlowModel<FoodVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FoodVideos component.
  late FoodVideosModel foodVideosModel;

  @override
  void initState(BuildContext context) {
    foodVideosModel = createModel(context, () => FoodVideosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    foodVideosModel.dispose();
  }
}
