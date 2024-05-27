import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'usage_model.dart';
export 'usage_model.dart';

class UsageWidget extends StatefulWidget {
  const UsageWidget({super.key});

  @override
  State<UsageWidget> createState() => _UsageWidgetState();
}

class _UsageWidgetState extends State<UsageWidget>
    with TickerProviderStateMixin {
  late UsageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.chevron_left_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
              child: Text(
                'Data Usage',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Download',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        '45GB',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Upload',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        '18GB',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        labelColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        elevation: 0.0,
                        buttonMargin:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        padding: const EdgeInsets.all(4.0),
                        tabs: const [
                          Tab(
                            text: 'Daily',
                          ),
                          Tab(
                            text: 'Weekly',
                          ),
                          Tab(
                            text: 'Monthly',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowBarChart(
                                      barData: [
                                        FFBarChartData(
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        )
                                      ],
                                      xLabels: List.generate(
                                          random_data.randomInteger(5, 5),
                                          (index) => random_data.randomString(
                                                0,
                                                0,
                                                true,
                                                false,
                                                false,
                                              )),
                                      barWidth: 16.0,
                                      barBorderRadius:
                                          BorderRadius.circular(8.0),
                                      groupSpace: 8.0,
                                      alignment: BarChartAlignment.spaceAround,
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 5.0,
                                            isCurved: true,
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowBarChart(
                                      barData: [
                                        FFBarChartData(
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        )
                                      ],
                                      xLabels: List.generate(
                                          random_data.randomInteger(5, 5),
                                          (index) => random_data.randomString(
                                                0,
                                                0,
                                                true,
                                                false,
                                                false,
                                              )),
                                      barWidth: 16.0,
                                      barBorderRadius:
                                          BorderRadius.circular(8.0),
                                      groupSpace: 8.0,
                                      alignment: BarChartAlignment.spaceAround,
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 5.0,
                                            isCurved: true,
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowBarChart(
                                      barData: [
                                        FFBarChartData(
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        )
                                      ],
                                      xLabels: List.generate(
                                          random_data.randomInteger(5, 5),
                                          (index) => random_data.randomString(
                                                0,
                                                0,
                                                true,
                                                false,
                                                false,
                                              )),
                                      barWidth: 16.0,
                                      barBorderRadius:
                                          BorderRadius.circular(8.0),
                                      groupSpace: 8.0,
                                      alignment: BarChartAlignment.spaceAround,
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          yData: List.generate(
                                              random_data.randomInteger(5, 5),
                                              (index) => random_data
                                                  .randomInteger(0, 10)),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 5.0,
                                            isCurved: true,
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(),
                                      yAxisLabelInfo: const AxisLabelInfo(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
