import '/components/health_care_videos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'health_care_video_model.dart';
export 'health_care_video_model.dart';

class HealthCareVideoWidget extends StatefulWidget {
  const HealthCareVideoWidget({super.key});

  @override
  State<HealthCareVideoWidget> createState() => _HealthCareVideoWidgetState();
}

class _HealthCareVideoWidgetState extends State<HealthCareVideoWidget> {
  late HealthCareVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealthCareVideoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Visibility(
          visible: responsiveVisibility(
            context: context,
            desktop: false,
          ),
          child: wrapWithModel(
            model: _model.healthCareVideosModel,
            updateCallback: () => setState(() {}),
            child: const HealthCareVideosWidget(),
          ),
        ),
      ),
    );
  }
}
