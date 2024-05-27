import '/backend/supabase/supabase.dart';
import '/components/categories_bottom_sheet_widget.dart';
import '/components/current_points_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'new_home_mobile_model.dart';
export 'new_home_mobile_model.dart';

class NewHomeMobileWidget extends StatefulWidget {
  const NewHomeMobileWidget({super.key});

  @override
  State<NewHomeMobileWidget> createState() => _NewHomeMobileWidgetState();
}

class _NewHomeMobileWidgetState extends State<NewHomeMobileWidget> {
  late NewHomeMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewHomeMobileModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, -1.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              FutureBuilder<List<AdRow>>(
                future: AdTable().queryRows(
                  queryFn: (q) => q,
                ),
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
                  List<AdRow> pageViewAdRowList = snapshot.data!;
                  return SizedBox(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: PageView.builder(
                      controller: _model.pageViewController ??= PageController(
                          initialPage:
                              max(0, min(0, pageViewAdRowList.length - 1))),
                      scrollDirection: Axis.vertical,
                      itemCount: pageViewAdRowList.length,
                      itemBuilder: (context, pageViewIndex) {
                        final pageViewAdRow = pageViewAdRowList[pageViewIndex];
                        return FlutterFlowVideoPlayer(
                          path: pageViewAdRow.video!,
                          videoType: VideoType.network,
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          autoPlay: true,
                          looping: true,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                          pauseOnNavigate: false,
                        );
                      },
                    ),
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/913/600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Follow',
                            options: FFButtonOptions(
                              height: 20.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(120.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 20.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: const FaIcon(
                                FontAwesomeIcons.coins,
                                color: Colors.white,
                                size: 22.0,
                              ),
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const CurrentPointsWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 10.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: const FaIcon(
                                FontAwesomeIcons.gripHorizontal,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const CategoriesBottomSheetWidget(),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              '123',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.commentDots,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              '340',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.share,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Share',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                    ))
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00FFFFFF),
                            child: ExpandableNotifier(
                              controller: _model.expandableExpandableController,
                              child: ExpandablePanel(
                                header: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://picsum.photos/seed/913/600',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Company',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.verified,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 15.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing...',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n#Hashtag1 #Hashtag2 #Hashtag3',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                theme: const ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  iconColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
