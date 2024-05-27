import '/components/food_videos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'food_video_model.dart';
export 'food_video_model.dart';

class FoodVideoWidget extends StatefulWidget {
  const FoodVideoWidget({super.key});

  @override
  State<FoodVideoWidget> createState() => _FoodVideoWidgetState();
}

class _FoodVideoWidgetState extends State<FoodVideoWidget> {
  late FoodVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodVideoModel());

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
            model: _model.foodVideosModel,
            updateCallback: () => setState(() {}),
            child: const FoodVideosWidget(),
          ),
        ),
      ),
    );
  }
}
