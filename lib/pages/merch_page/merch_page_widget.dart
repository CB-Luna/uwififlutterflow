import '/desktop/pages/merch_page_desktop/merch_page_desktop/merch_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/merch_page_mobile/merch_page_mobile/merch_page_mobile_widget.dart';
import '/tablet/pages_tablet/merch_page_tablet/merch_page_tablet/merch_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'merch_page_model.dart';
export 'merch_page_model.dart';

class MerchPageWidget extends StatefulWidget {
  const MerchPageWidget({super.key});

  @override
  State<MerchPageWidget> createState() => _MerchPageWidgetState();
}

class _MerchPageWidgetState extends State<MerchPageWidget> {
  late MerchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MerchPageModel());

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
                    model: _model.merchPageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const MerchPageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Expanded(
                  child: wrapWithModel(
                    model: _model.merchPageTabletModel,
                    updateCallback: () => setState(() {}),
                    child: const MerchPageTabletWidget(),
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
                    model: _model.merchPageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const MerchPageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
