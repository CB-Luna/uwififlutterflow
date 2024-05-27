import '/components/sports_videos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sports_video_model.dart';
export 'sports_video_model.dart';

class SportsVideoWidget extends StatefulWidget {
  const SportsVideoWidget({super.key});

  @override
  State<SportsVideoWidget> createState() => _SportsVideoWidgetState();
}

class _SportsVideoWidgetState extends State<SportsVideoWidget> {
  late SportsVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportsVideoModel());

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
            model: _model.sportsVideosModel,
            updateCallback: () => setState(() {}),
            child: const SportsVideosWidget(),
          ),
        ),
      ),
    );
  }
}
