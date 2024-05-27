import '/desktop/pages/home/home_desktop/home_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/home_page_mobile/home_mobile/home_mobile_widget.dart';
import '/tablet/pages_tablet/home_page_tablet/home_tablet/home_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
    this.currentUserIdAPI,
    this.currentUserEmailAPI,
    this.currentUserAccessTokenAPI,
  });

  final String? currentUserIdAPI;
  final String? currentUserEmailAPI;
  final String? currentUserAccessTokenAPI;

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Flexible(
                child: wrapWithModel(
                  model: _model.homeDesktopModel,
                  updateCallback: () => setState(() {}),
                  child: const HomeDesktopWidget(),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              desktop: false,
            ))
              Flexible(
                child: wrapWithModel(
                  model: _model.homeTabletModel,
                  updateCallback: () => setState(() {}),
                  child: const HomeTabletWidget(),
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
                  model: _model.homeMobileModel,
                  updateCallback: () => setState(() {}),
                  child: const HomeMobileWidget(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
