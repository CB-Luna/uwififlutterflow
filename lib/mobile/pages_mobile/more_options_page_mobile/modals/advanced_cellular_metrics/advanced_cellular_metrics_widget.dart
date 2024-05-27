import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'advanced_cellular_metrics_model.dart';
export 'advanced_cellular_metrics_model.dart';

class AdvancedCellularMetricsWidget extends StatefulWidget {
  const AdvancedCellularMetricsWidget({super.key});

  @override
  State<AdvancedCellularMetricsWidget> createState() =>
      _AdvancedCellularMetricsWidgetState();
}

class _AdvancedCellularMetricsWidgetState
    extends State<AdvancedCellularMetricsWidget> with TickerProviderStateMixin {
  late AdvancedCellularMetricsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdvancedCellularMetricsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController9 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController10 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController11 =
        ExpandableController(initialExpanded: false);
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
        appBar: responsiveVisibility(
          context: context,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: true,
                leading: FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                  },
                  text: 'Button',
                  icon: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 40.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                title: Text(
                  'Advanced Cellular Metrics',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                actions: const [],
                centerTitle: true,
              )
            : null,
        body: Column(
          children: [
            Align(
              alignment: const Alignment(0.0, 0),
              child: TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryText,
                unselectedLabelColor:
                    FlutterFlowTheme.of(context).secondaryText,
                labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
                unselectedLabelStyle: const TextStyle(),
                indicatorColor: FlutterFlowTheme.of(context).primary,
                padding: const EdgeInsets.all(4.0),
                tabs: const [
                  Tab(
                    text: 'LTE',
                  ),
                  Tab(
                    text: '5G',
                  ),
                ],
                controller: _model.tabBarController,
                onTap: (i) async {
                  [() async {}, () async {}][i]();
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
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController1,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'CQI',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '3',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Channel Quality Indication\n\nA code that is reported back to the cellular network of the quality of the gateway\'s received signal.\n\nCQl is always a number between 0 and 15 that is calculated using the other metrics, with 15 being the highest reported quality.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Good',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController2,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'RSSI',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-58',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Received Signal Strength Indicator \n\nA measure of cellular signal strength received by your gateway.\n\nRSSI is always a negative number and is typically ranges between -65 and -90 dBm, with a value of -75 or higher being ideal.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Excellent',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController3,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'CGI',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '310260',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Cell Global Identity\n\nis a unique identifier assigned to a specific cell in a cellular network. Each cell is given a unique CGI to distinguish it from other cells within the network.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Good',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController4,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'RSRQ',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-15',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Reference Signal Received Quality\n\nA measure of the cellular signal quality received by your gateway.\n\nRSRQ is always a negative number and typically ranges from -3 and -20 dBM, with a value of -10 or higher being ideal.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Poor',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController5,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'RSRP',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-93',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Reference Signal Received Power \n\nIt is the power of the LTE Reference Signals spread over the full bandwidth and narrowband. A minimum of -20 dB SINR (of the S-Synch channel) is needed to detect RSRP/RSRQ.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Excellent',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController6,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'SINR',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '2.3',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Signal Interference to Noise Ratio \n\nA measure of the amount of cellular signal interference (or \"noise\") received by your gateway.\n\nSINR can be a positive or negative number, with a value of 20 or higher being ideal.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Poor',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController7,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'BAND',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          'B66',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'The frequency range being used to connect to the  U-wifi cellular network.\nThe extended range band is Band n71\n(600 MHz), while the greater maximum speed band is Band n41 (2.5 GHz).',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
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
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController8,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'RSRQ',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-8',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Reference Signal Received Quality\n\nA measure of the cellular signal quality received by your gateway.\n\nRSRQ is always a negative number and typically ranges from -3 and -20 dBM, with a value of -10 or higher being ideal.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Poor',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController9,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'RSRP',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-65',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Reference Signal Received Power \n\nIt is the power of the LTE Reference Signals spread over the full bandwidth and narrowband. A minimum of -20 dB SINR (of the S-Synch channel) is needed to detect RSRP/RSRQ.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Excellent',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController10,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'SINR',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          '-',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Signal Interference to Noise Ratio \n\nA measure of the amount of cellular signal interference (or \"noise\") received by your gateway.\n\nSINR can be a positive or negative number, with a value of 20 or higher being ideal.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Status:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0x8A000000),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Poor',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Container(
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController11,
                                child: ExpandablePanel(
                                  header: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'BAND',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          'n71',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'The frequency range being used to connect to the  U-wifi cellular network.\nThe extended range band is Band n71\n(600 MHz), while the greater maximum speed band is Band n41 (2.5 GHz).',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: FontAwesomeIcons.plus,
                                    collapseIcon: FontAwesomeIcons.minus,
                                    iconSize: 20.0,
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).accent1,
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
    );
  }
}
