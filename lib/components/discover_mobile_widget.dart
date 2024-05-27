import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'discover_mobile_model.dart';
export 'discover_mobile_model.dart';

class DiscoverMobileWidget extends StatefulWidget {
  const DiscoverMobileWidget({super.key});

  @override
  State<DiscoverMobileWidget> createState() => _DiscoverMobileWidgetState();
}

class _DiscoverMobileWidgetState extends State<DiscoverMobileWidget> {
  late DiscoverMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscoverMobileModel());

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: 325.0,
                      height: 415.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=4470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0x4D000000),
                              Color(0xCC002F02),
                              Color(0xE6002F02),
                              Color(0xFF002F02)
                            ],
                            stops: [0.4, 0.6, 0.7, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10.0,
                                      sigmaY: 20.0,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Health',
                                      icon: const FaIcon(
                                        FontAwesomeIcons.leaf,
                                        size: 14.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x36FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 10.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x4DFFFFFF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'HealthCare',
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  'Montserrat Alternates',
                                              fontSize: 40.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        minFontSize: 14.0,
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Watch Now',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0x36FFFFFF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 10.0,
                                                borderSide: const BorderSide(
                                                  color: Color(0x00FFFFFF),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 10.0))
                                        .around(const SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: 325.0,
                      height: 415.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?q=80&w=3072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0x4D000000),
                              Color(0xCC24002F),
                              Color(0xE624002F),
                              Color(0xFF24002F)
                            ],
                            stops: [0.4, 0.6, 0.7, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10.0,
                                      sigmaY: 20.0,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Sports',
                                      icon: const Icon(
                                        Icons.sports_baseball,
                                        size: 14.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x36FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 10.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x4DFFFFFF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Sports',
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  'Montserrat Alternates',
                                              fontSize: 40.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        minFontSize: 14.0,
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Watch Now',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0x36FFFFFF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 10.0,
                                                borderSide: const BorderSide(
                                                  color: Color(0x00FFFFFF),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 10.0))
                                        .around(const SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: 325.0,
                      height: 415.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://images.unsplash.com/photo-1514316454349-750a7fd3da3a?q=80&w=3456&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0x4D000000),
                              Color(0xCD00272F),
                              Color(0xE500272F),
                              Color(0xFF00272F)
                            ],
                            stops: [0.4, 0.6, 0.7, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10.0,
                                      sigmaY: 20.0,
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Vehicles',
                                      icon: const FaIcon(
                                        FontAwesomeIcons.car,
                                        size: 14.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x36FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 10.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x4DFFFFFF),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Vehicles',
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  'Montserrat Alternates',
                                              fontSize: 40.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        minFontSize: 14.0,
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Watch Now',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0x36FFFFFF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 10.0,
                                                borderSide: const BorderSide(
                                                  color: Color(0x00FFFFFF),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 10.0))
                                        .around(const SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 10.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: 415.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://images.unsplash.com/photo-1586182987320-4f376d39d787?q=80&w=4000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0x4D000000),
                        Color(0xCC2F0029),
                        Color(0xE610012B),
                        Color(0xFF000B2F)
                      ],
                      stops: [0.4, 0.6, 0.7, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 20.0,
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Gaming',
                                icon: const Icon(
                                  Icons.games_rounded,
                                  size: 14.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x36FFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 10.0,
                                  borderSide: const BorderSide(
                                    color: Color(0x4DFFFFFF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Gaming',
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat Alternates',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  minFontSize: 14.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5.0,
                                      sigmaY: 5.0,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Watch Now',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x36FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          elevation: 10.0,
                                          borderSide: const BorderSide(
                                            color: Color(0x00FFFFFF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 10.0))
                                  .around(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: 415.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=3845&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0x4D000000),
                        Color(0xCD012F38),
                        Color(0xE500272F),
                        Color(0xFF00272F)
                      ],
                      stops: [0.4, 0.6, 0.7, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 20.0,
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Food',
                                icon: const Icon(
                                  Icons.water_drop,
                                  size: 14.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x36FFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 10.0,
                                  borderSide: const BorderSide(
                                    color: Color(0x4DFFFFFF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Food',
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat Alternates',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  minFontSize: 14.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5.0,
                                      sigmaY: 5.0,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Watch Now',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x36FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          elevation: 10.0,
                                          borderSide: const BorderSide(
                                            color: Color(0x00FFFFFF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 10.0))
                                  .around(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: 415.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://images.unsplash.com/photo-1578932750355-5eb30ece487a?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0x4D000000),
                        Color(0xCC24002F),
                        Color(0xE624002F),
                        Color(0xFF24002F)
                      ],
                      stops: [0.4, 0.6, 0.7, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 20.0,
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Clothing',
                                icon: const FaIcon(
                                  FontAwesomeIcons.child,
                                  size: 14.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x36FFFFFF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 10.0,
                                  borderSide: const BorderSide(
                                    color: Color(0x4DFFFFFF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Clothing',
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat Alternates',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  minFontSize: 14.0,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5.0,
                                      sigmaY: 5.0,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Watch Now',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x36FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          elevation: 10.0,
                                          borderSide: const BorderSide(
                                            color: Color(0x00FFFFFF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 10.0))
                                  .around(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
