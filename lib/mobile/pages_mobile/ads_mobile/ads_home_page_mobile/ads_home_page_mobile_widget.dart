import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'ads_home_page_mobile_model.dart';
export 'ads_home_page_mobile_model.dart';

class AdsHomePageMobileWidget extends StatefulWidget {
  const AdsHomePageMobileWidget({super.key});

  @override
  State<AdsHomePageMobileWidget> createState() =>
      _AdsHomePageMobileWidgetState();
}

class _AdsHomePageMobileWidgetState extends State<AdsHomePageMobileWidget>
    with TickerProviderStateMixin {
  late AdsHomePageMobileModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsHomePageMobileModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
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
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
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
              final pageViewRegistrosResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final results = pageViewRegistrosResponse.jsonBody
                      .toList()
                      .take(4)
                      .toList();
                  return SizedBox(
                    width: double.infinity,
                    height: 400.0,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage:
                                      max(0, min(0, results.length - 1))),
                          scrollDirection: Axis.horizontal,
                          itemCount: results.length,
                          itemBuilder: (context, resultsIndex) {
                            final resultsItem = results[resultsIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'adDetails_mobile',
                                  queryParameters: {
                                    'adId': serializeParam(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.id''',
                                      ),
                                      ParamType.int,
                                    ),
                                    'adPoster': serializeParam(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.poster_path''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'adTitle': serializeParam(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.title''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'adOverview': serializeParam(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.overview''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                    'video': serializeParam(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.video''',
                                      ).toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      getJsonField(
                                        resultsItem,
                                        r'''$.poster_path''',
                                      ).toString(),
                                      width: double.infinity,
                                      height: 400.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.51),
                                    child: Container(
                                      width: double.infinity,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.transparent,
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground
                                          ],
                                          stops: const [0.0, 1.0],
                                          begin:
                                              const AlignmentDirectional(0.0, -1.0),
                                          end: const AlignmentDirectional(0, 1.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 100.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 68.0,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 24.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'home_page');
                                                    },
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_back_ios_outlined,
                                                      color: Colors.white,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.45),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Container(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (Theme.of(
                                                                        context)
                                                                    .brightness ==
                                                                Brightness
                                                                    .dark) {
                                                              setDarkModeSetting(
                                                                  context,
                                                                  ThemeMode
                                                                      .light);
                                                              return;
                                                            } else {
                                                              setDarkModeSetting(
                                                                  context,
                                                                  ThemeMode
                                                                      .dark);
                                                              return;
                                                            }
                                                          },
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  if (Theme.of(
                                                                              context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .light)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          13.0,
                                                                          10.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .mode_night_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  if (Theme.of(
                                                                              context)
                                                                          .brightness ==
                                                                      Brightness
                                                                          .dark)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          11.0,
                                                                          10.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .wb_sunny_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.85),
                                    child: Container(
                                      width: double.infinity,
                                      height: 68.0,
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    5.0),
                                                            child: Text(
                                                              getJsonField(
                                                                resultsItem,
                                                                r'''$.title''',
                                                              ).toString(),
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation']!),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.7),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      setState(() =>
                                                          FFAppState().Active =
                                                              !FFAppState()
                                                                  .Active);
                                                    },
                                                    value: FFAppState().Active,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 25.0,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 25.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.7),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: ToggleIcon(
                                                      onPressed: () async {
                                                        setState(() =>
                                                            FFAppState().local =
                                                                !FFAppState()
                                                                    .local);
                                                      },
                                                      value: FFAppState().local,
                                                      onIcon: FaIcon(
                                                        FontAwesomeIcons.share,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 25.0,
                                                      ),
                                                      offIcon: FaIcon(
                                                        FontAwesomeIcons.share,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.7),
                                              child: Container(
                                                width: 60.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'ScrollVideos');
                                                  },
                                                  child: Icon(
                                                    Icons.play_arrow_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.83, 0.95),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(
                                    initialPage:
                                        max(0, min(0, results.length - 1))),
                            count: results.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              setState(() {});
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2.0,
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 12.0,
                              dotHeight: 6.0,
                              dotColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primary,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Categories',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'See all >',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 224.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: FutureBuilder<ApiCallResponse>(
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
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'adDetails_mobile',
                                    queryParameters: {
                                      'adPoster': serializeParam(
                                        getJsonField(
                                          registrosListItem,
                                          r'''$.poster_path''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'adTitle': serializeParam(
                                        getJsonField(
                                          registrosListItem,
                                          r'''$.title''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'adOverview': serializeParam(
                                        getJsonField(
                                          registrosListItem,
                                          r'''$.overview''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'video': serializeParam(
                                        getJsonField(
                                          registrosListItem,
                                          r'''$.video''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'adId': serializeParam(
                                        getJsonField(
                                          registrosListItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
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
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  getJsonField(
                                    registrosListItem,
                                    r'''$.title''',
                                  )
                                      .toString()
                                      .maybeHandleOverflow(maxChars: 15),
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
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Education',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'See all >',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 224.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: EducationCall.call(),
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
                final rowEducationResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final educationList =
                        rowEducationResponse.jsonBody.toList().take(8).toList();
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(educationList.length,
                                (educationListIndex) {
                          final educationListItem =
                              educationList[educationListIndex];
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
                                      educationListItem,
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
                                    educationListItem,
                                    r'''$.title''',
                                  )
                                      .toString()
                                      .maybeHandleOverflow(maxChars: 15),
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
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Healthcare',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'See all >',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 224.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: HealthcareCall.call(),
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
                final rowHealthcareResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final healtcareList = rowHealthcareResponse.jsonBody
                        .toList()
                        .take(8)
                        .toList();
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(healtcareList.length,
                                (healtcareListIndex) {
                          final healtcareListItem =
                              healtcareList[healtcareListIndex];
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
                                      healtcareListItem,
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
                                    healtcareListItem,
                                    r'''$.title''',
                                  )
                                      .toString()
                                      .maybeHandleOverflow(maxChars: 15),
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
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fashion',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'See all >',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 224.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: FashionCall.call(),
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
                final rowFashionResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final fahionList =
                        rowFashionResponse.jsonBody.toList().take(8).toList();
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(fahionList.length, (fahionListIndex) {
                          final fahionListItem = fahionList[fahionListIndex];
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
                                      fahionListItem,
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
                                    fahionListItem,
                                    r'''$.title''',
                                  )
                                      .toString()
                                      .maybeHandleOverflow(maxChars: 15),
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
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Food',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'See all >',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 224.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: FoodCall.call(),
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
                final rowFoodResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final foodList =
                        rowFoodResponse.jsonBody.toList().take(8).toList();
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(foodList.length, (foodListIndex) {
                          final foodListItem = foodList[foodListIndex];
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
                                      foodListItem,
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
                                    foodListItem,
                                    r'''$.title''',
                                  )
                                      .toString()
                                      .maybeHandleOverflow(maxChars: 15),
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
          ),
          Container(
            width: double.infinity,
            height: 24.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Movies',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'See all >',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
