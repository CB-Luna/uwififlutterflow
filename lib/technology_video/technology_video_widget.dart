import '/components/technology_videos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'technology_video_model.dart';
export 'technology_video_model.dart';

class TechnologyVideoWidget extends StatefulWidget {
  const TechnologyVideoWidget({super.key});

  @override
  State<TechnologyVideoWidget> createState() => _TechnologyVideoWidgetState();
}

class _TechnologyVideoWidgetState extends State<TechnologyVideoWidget> {
  late TechnologyVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TechnologyVideoModel());

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
            model: _model.technologyVideosModel,
            updateCallback: () => setState(() {}),
            child: const TechnologyVideosWidget(),
          ),
        ),
      ),
    );
  }
}
