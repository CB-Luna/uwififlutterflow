import '/desktop/pages/more_options_page_desktop/more_options_page_desktop/more_options_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/more_options_page_mobile/more_options_page_mobile/more_options_page_mobile_widget.dart';
import '/tablet/pages_tablet/more_options_page_tablet/more_options_page_tablet/more_options_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'more_options_page_model.dart';
export 'more_options_page_model.dart';

class MoreOptionsPageWidget extends StatefulWidget {
  const MoreOptionsPageWidget({super.key});

  @override
  State<MoreOptionsPageWidget> createState() => _MoreOptionsPageWidgetState();
}

class _MoreOptionsPageWidgetState extends State<MoreOptionsPageWidget> {
  late MoreOptionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreOptionsPageModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: wrapWithModel(
                    model: _model.moreOptionsPageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const MoreOptionsPageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.moreOptionsPageTabletModel,
                    updateCallback: () => setState(() {}),
                    child: const MoreOptionsPageTabletWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.moreOptionsPageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const MoreOptionsPageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
