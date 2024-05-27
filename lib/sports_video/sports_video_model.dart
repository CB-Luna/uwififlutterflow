import '/components/sports_videos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sports_video_widget.dart' show SportsVideoWidget;
import 'package:flutter/material.dart';

class SportsVideoModel extends FlutterFlowModel<SportsVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SportsVideos component.
  late SportsVideosModel sportsVideosModel;

  @override
  void initState(BuildContext context) {
    sportsVideosModel = createModel(context, () => SportsVideosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sportsVideosModel.dispose();
  }
}
