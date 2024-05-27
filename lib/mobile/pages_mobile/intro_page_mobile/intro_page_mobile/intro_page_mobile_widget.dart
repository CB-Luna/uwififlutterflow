import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'intro_page_mobile_model.dart';
export 'intro_page_mobile_model.dart';

class IntroPageMobileWidget extends StatefulWidget {
  const IntroPageMobileWidget({super.key});

  @override
  State<IntroPageMobileWidget> createState() => _IntroPageMobileWidgetState();
}

class _IntroPageMobileWidgetState extends State<IntroPageMobileWidget>
    with TickerProviderStateMixin {
  late IntroPageMobileModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroPageMobileModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, -80.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3200.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -80.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          child: Container(
            width: double.infinity,
            height: 420.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: MasonryGridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      return [
                        () => ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 120.0,
                                height: 120.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw-YkU4myYFI_Nt2-3obVBNS9EpHf8RNhKzg&usqp=CAU',
                                width: 120.0,
                                height: 160.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/32/600',
                                width: 100.0,
                                height: 0.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(0.0),
                              ),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 80.0,
                                height: 180.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQROkdUd4J2QcJ5La9swhy9-ry1ECmC75W5s-29tacZDbeM_5ZgvUSirvvul-I_n-m9fig&usqp=CAU',
                                width: 120.0,
                                height: 160.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 120.0,
                                height: 180.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(0.0),
                              ),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZgWJ6xE6VomnCqc3c4kffg90OlO-qyG5EJ_IDfUYeSk0vX22IMT6TXem3M7Z_CAxdhrM&usqp=CAU',
                                width: 120.0,
                                height: 190.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 120.0,
                                height: 160.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw-YkU4myYFI_Nt2-3obVBNS9EpHf8RNhKzg&usqp=CAU',
                                width: 120.0,
                                height: 180.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(0.0),
                              ),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 120.0,
                                height: 190.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                        () => ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://media.istockphoto.com/id/1209751726/photo/realistic-bright-green-purple-aurora-borealis-northern-lights-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=ngMqZido9RtGQu_Gljyi9TFPXDMMphOzFL-ImBm7cuo=',
                                width: 120.0,
                                height: 160.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                      ][index]();
                    },
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ],
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 670.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 230.0,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 50.0),
                          child: PageView(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            onPageChanged: (_) async {
                              setDarkModeSetting(context, ThemeMode.light);
                            },
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    48.0, 0.0, 48.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Only the best for U',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Connect your Gateway instantly!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation2']!),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    48.0, 0.0, 48.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Only the best for U',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation3']!),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Connect your Gateway instantly!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation4']!),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    48.0, 0.0, 48.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Only the best for U',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation5']!),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Connect your Gateway instantly!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation6']!),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 3,
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
                                expansionFactor: 3.0,
                                spacing: 8.0,
                                radius: 16.0,
                                dotWidth: 8.0,
                                dotHeight: 8.0,
                                dotColor: FlutterFlowTheme.of(context).tertiary,
                                activeDotColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.goNamed('Welcome');
                            },
                            text: 'Skip',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 60.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 4.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
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
        ),
      ],
    );
  }
}
