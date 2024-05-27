import '/desktop/widgets/side_bar/side_bar_widget.dart';
import '/desktop/widgets/top_bar/top_bar/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/widgets/tap_bar/tap_bar_widget.dart';
import 'package:flutter/material.dart';
import 'tablet_layout_component_model.dart';
export 'tablet_layout_component_model.dart';

class TabletLayoutComponentWidget extends StatefulWidget {
  const TabletLayoutComponentWidget({super.key});

  @override
  State<TabletLayoutComponentWidget> createState() =>
      _TabletLayoutComponentWidgetState();
}

class _TabletLayoutComponentWidgetState
    extends State<TabletLayoutComponentWidget> {
  late TabletLayoutComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletLayoutComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        desktop: false,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350.0,
                      height: 1059.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: wrapWithModel(
                          model: _model.sideBarModel,
                          updateCallback: () => setState(() {}),
                          child: const SideBarWidget(),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.tapBarModel1,
                      updateCallback: () => setState(() {}),
                      child: const TapBarWidget(),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.topBarModel,
                          updateCallback: () => setState(() {}),
                          child: const TopBarWidget(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: wrapWithModel(
                          model: _model.tapBarModel2,
                          updateCallback: () => setState(() {}),
                          child: const TapBarWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
