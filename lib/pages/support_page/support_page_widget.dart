import '/desktop/pages/support_page_desktop/support_page_desktop/support_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/support_page_mobile/support_page_mobile/support_page_mobile_widget.dart';
import '/tablet/pages_tablet/support_page_tablet/support_page_tablet/support_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'support_page_model.dart';
export 'support_page_model.dart';

class SupportPageWidget extends StatefulWidget {
  const SupportPageWidget({super.key});

  @override
  State<SupportPageWidget> createState() => _SupportPageWidgetState();
}

class _SupportPageWidgetState extends State<SupportPageWidget> {
  late SupportPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportPageModel());

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: wrapWithModel(
                    model: _model.supportPageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const SupportPageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.supportPageTabletModel,
                    updateCallback: () => setState(() {}),
                    child: const SupportPageTabletWidget(),
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
                    model: _model.supportPageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const SupportPageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
