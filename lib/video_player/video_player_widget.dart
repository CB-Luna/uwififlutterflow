import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'video_player_model.dart';
export 'video_player_model.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    this.video,
    this.adId,
  });

  final String? video;
  final int? adId;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoPlayerModel());

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 40.0, 0.0, 50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(
                        color: Color(0xB3272B30),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlutterFlowVideoPlayer(
                    path: widget.video!,
                    videoType: VideoType.network,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    autoPlay: true,
                    looping: false,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                    lazyLoad: false,
                    pauseOnNavigate: false,
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
