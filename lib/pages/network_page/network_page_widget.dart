import '/desktop/pages/network_page_desktop/network_page_desktop/network_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/network_page_mobile/network_page_mobile/network_page_mobile_widget.dart';
import '/tablet/pages_tablet/network_page_tablet/network_page_tablet/network_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'network_page_model.dart';
export 'network_page_model.dart';

class NetworkPageWidget extends StatefulWidget {
  const NetworkPageWidget({super.key});

  @override
  State<NetworkPageWidget> createState() => _NetworkPageWidgetState();
}

class _NetworkPageWidgetState extends State<NetworkPageWidget> {
  late NetworkPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NetworkPageModel());

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
                    model: _model.networkPageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const NetworkPageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.networkPageTabletModel,
                    updateCallback: () => setState(() {}),
                    child: const NetworkPageTabletWidget(),
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
                    model: _model.networkPageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const NetworkPageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
