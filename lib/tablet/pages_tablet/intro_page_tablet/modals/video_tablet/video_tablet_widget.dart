import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'video_tablet_model.dart';
export 'video_tablet_model.dart';

class VideoTabletWidget extends StatefulWidget {
  const VideoTabletWidget({super.key});

  @override
  State<VideoTabletWidget> createState() => _VideoTabletWidgetState();
}

class _VideoTabletWidgetState extends State<VideoTabletWidget> {
  late VideoTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoTabletModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('SignalLocation');
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowVideoPlayer(
                    path: 'assets/videos/RouterVideo.mp4',
                    videoType: VideoType.asset,
                    height: MediaQuery.sizeOf(context).height * 0.9,
                    autoPlay: true,
                    looping: false,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
