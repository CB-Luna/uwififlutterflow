import '/components/education_videos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'education_video_model.dart';
export 'education_video_model.dart';

class EducationVideoWidget extends StatefulWidget {
  const EducationVideoWidget({super.key});

  @override
  State<EducationVideoWidget> createState() => _EducationVideoWidgetState();
}

class _EducationVideoWidgetState extends State<EducationVideoWidget> {
  late EducationVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EducationVideoModel());

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
            model: _model.educationVideosModel,
            updateCallback: () => setState(() {}),
            child: const EducationVideosWidget(),
          ),
        ),
      ),
    );
  }
}
