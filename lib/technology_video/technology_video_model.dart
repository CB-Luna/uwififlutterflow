import '/components/technology_videos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'technology_video_widget.dart' show TechnologyVideoWidget;
import 'package:flutter/material.dart';

class TechnologyVideoModel extends FlutterFlowModel<TechnologyVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TechnologyVideos component.
  late TechnologyVideosModel technologyVideosModel;

  @override
  void initState(BuildContext context) {
    technologyVideosModel = createModel(context, () => TechnologyVideosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    technologyVideosModel.dispose();
  }
}
