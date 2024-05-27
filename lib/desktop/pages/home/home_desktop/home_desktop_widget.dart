import '/desktop/pages/home/components/card_conection/card_conection_widget.dart';
import '/desktop/pages/home/components/card_line_number/card_line_number_widget.dart';
import '/desktop/pages/home/components/card_quality/card_quality_widget.dart';
import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_desktop_model.dart';
export 'home_desktop_model.dart';

class HomeDesktopWidget extends StatefulWidget {
  const HomeDesktopWidget({super.key});

  @override
  State<HomeDesktopWidget> createState() => _HomeDesktopWidgetState();
}

class _HomeDesktopWidgetState extends State<HomeDesktopWidget> {
  late HomeDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeDesktopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 350.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: wrapWithModel(
                            model: _model.sideBarModel,
                            updateCallback: () => setState(() {}),
                            child: const SideBarWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.topBarModel,
                        updateCallback: () => setState(() {}),
                        child: const TopBarWidget(),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Wrap(
                                        spacing: 50.0,
                                        runSpacing: 50.0,
                                        alignment: WrapAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.spaceEvenly,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: 650.0,
                                            height: 350.0,
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.cardConectionModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CardConectionWidget(),
                                            ),
                                          ),
                                          Container(
                                            width: 650.0,
                                            height: 350.0,
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.cardLineNumberModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CardLineNumberWidget(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Wrap(
                                        spacing: 50.0,
                                        runSpacing: 50.0,
                                        alignment: WrapAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.spaceEvenly,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: 650.0,
                                            height: 350.0,
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.cardQualityModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CardQualityWidget(),
                                            ),
                                          ),
                                          Container(
                                            width: 650.0,
                                            height: 350.0,
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.cardQualityModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const CardQualityWidget(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].divide(const SizedBox(height: 50.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 40.0,
                borderWidth: 2.0,
                buttonSize: 60.0,
                fillColor: FlutterFlowTheme.of(context).alternate,
                hoverColor: FlutterFlowTheme.of(context).primary,
                hoverIconColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
                onPressed: () async {
                  context.pushNamed('NewHome');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
