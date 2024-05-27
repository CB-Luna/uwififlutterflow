import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ads_search_page_mobile/ads_search_page_mobile_widget.dart';
import '/tablet/ads_tablet/ads_search_page_tablet/ads_search_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'ads_search_page_model.dart';
export 'ads_search_page_model.dart';

class AdsSearchPageWidget extends StatefulWidget {
  const AdsSearchPageWidget({super.key});

  @override
  State<AdsSearchPageWidget> createState() => _AdsSearchPageWidgetState();
}

class _AdsSearchPageWidgetState extends State<AdsSearchPageWidget> {
  late AdsSearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdsSearchPageModel());

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
                model: _model.adsSearchPageMobileModel,
                updateCallback: () => setState(() {}),
                child: const AdsSearchPageMobileWidget(),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.adsSearchPageTabletModel,
                updateCallback: () => setState(() {}),
                child: const AdsSearchPageTabletWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
