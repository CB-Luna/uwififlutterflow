import '/components/education_videos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'education_video_widget.dart' show EducationVideoWidget;
import 'package:flutter/material.dart';

class EducationVideoModel extends FlutterFlowModel<EducationVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for EducationVideos component.
  late EducationVideosModel educationVideosModel;

  @override
  void initState(BuildContext context) {
    educationVideosModel = createModel(context, () => EducationVideosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    educationVideosModel.dispose();
  }
}
