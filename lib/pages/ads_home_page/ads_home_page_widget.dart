import '/desktop/ads_desktop/ads_home_page_desktop/ads_home_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_home_page_mobile/ads_home_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_home_page_tablet/ads_home_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'ads_home_page_model.dart';
export 'ads_home_page_model.dart';

class AdsHomePageWidget extends StatefulWidget {
  const AdsHomePageWidget({super.key});

  @override
  State<AdsHomePageWidget> createState() => _AdsHomePageWidgetState();
}

class _AdsHomePageWidgetState extends State<AdsHomePageWidget> {
  late AdsHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsHomePageModel());

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
        body: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.adsHomePageMobileModel,
                updateCallback: () => setState(() {}),
                child: const AdsHomePageMobileWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.adsHomePageTabletModel,
                updateCallback: () => setState(() {}),
                child: const AdsHomePageTabletWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              wrapWithModel(
                model: _model.adsHomePageDesktopModel,
                updateCallback: () => setState(() {}),
                child: const AdsHomePageDesktopWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
