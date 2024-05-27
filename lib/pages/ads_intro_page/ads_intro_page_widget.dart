import '/desktop/ads_desktop/ads_intro_page_desktop/ads_intro_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_intro_page_mobile/ads_intro_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_intro_page_tablet/ads_intro_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'ads_intro_page_model.dart';
export 'ads_intro_page_model.dart';

class AdsIntroPageWidget extends StatefulWidget {
  const AdsIntroPageWidget({super.key});

  @override
  State<AdsIntroPageWidget> createState() => _AdsIntroPageWidgetState();
}

class _AdsIntroPageWidgetState extends State<AdsIntroPageWidget> {
  late AdsIntroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsIntroPageModel());

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
                model: _model.adsIntroPageMobileModel,
                updateCallback: () => setState(() {}),
                child: const AdsIntroPageMobileWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.adsIntroPageTabletModel,
                updateCallback: () => setState(() {}),
                child: const AdsIntroPageTabletWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              wrapWithModel(
                model: _model.adsIntroPageDesktopModel,
                updateCallback: () => setState(() {}),
                child: const AdsIntroPageDesktopWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
