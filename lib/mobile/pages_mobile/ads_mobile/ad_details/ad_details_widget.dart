import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'ad_details_model.dart';
export 'ad_details_model.dart';

class AdDetailsWidget extends StatefulWidget {
  const AdDetailsWidget({
    super.key,
    this.adId,
    this.adPoster,
    required this.adTitle,
    this.adOverview,
    this.video,
  });

  final int? adId;
  final String? adPoster;
  final String? adTitle;
  final String? adOverview;
  final String? video;

  @override
  State<AdDetailsWidget> createState() => _AdDetailsWidgetState();
}

class _AdDetailsWidgetState extends State<AdDetailsWidget>
    with TickerProviderStateMixin {
  late AdDetailsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdDetailsModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400.0,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Stack(
              children: [
                Image.network(
                  widget.adPoster!,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        FlutterFlowTheme.of(context).primaryBackground
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: 96.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget.adTitle,
                                    'Title',
                                  ),
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'You\'ll earn',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '30 Points',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 24.0, 0.0),
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'videoPlayer',
                                  queryParameters: {
                                    'video': serializeParam(
                                      widget.video,
                                      ParamType.String,
                                    ),
                                    'adId': serializeParam(
                                      widget.adId,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          color: Color(0xB3272B30),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.adOverview,
                      'Overview',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 8.0),
            child: Text(
              'Similar',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          FutureBuilder<ApiCallResponse>(
            future: RegistrosCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final rowRegistrosResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final registrosList =
                      rowRegistrosResponse.jsonBody.toList().take(8).toList();
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(registrosList.length,
                              (registrosListIndex) {
                        final registrosListItem =
                            registrosList[registrosListIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  getJsonField(
                                    registrosListItem,
                                    r'''$.poster_path''',
                                  ).toString(),
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: AutoSizeText(
                                getJsonField(
                                  registrosListItem,
                                  r'''$.title''',
                                ).toString().maybeHandleOverflow(maxChars: 15),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                minFontSize: 14.0,
                              ),
                            ),
                          ],
                        );
                      })
                          .divide(const SizedBox(width: 24.0))
                          .around(const SizedBox(width: 24.0)),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
