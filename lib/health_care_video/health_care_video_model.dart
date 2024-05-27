import '/components/health_care_videos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'health_care_video_widget.dart' show HealthCareVideoWidget;
import 'package:flutter/material.dart';

class HealthCareVideoModel extends FlutterFlowModel<HealthCareVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HealthCareVideos component.
  late HealthCareVideosModel healthCareVideosModel;

  @override
  void initState(BuildContext context) {
    healthCareVideosModel = createModel(context, () => HealthCareVideosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    healthCareVideosModel.dispose();
  }
}
