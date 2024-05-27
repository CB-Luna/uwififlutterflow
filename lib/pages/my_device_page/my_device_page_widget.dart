import '/desktop/pages/my_device_page_desktop/my_device_page_desktop/my_device_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/my_device_page_mobile/my_device_page_mobile/my_device_page_mobile_widget.dart';
import '/tablet/pages_tablet/my_device_page_tablet/my_device_page_tablet/my_device_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'my_device_page_model.dart';
export 'my_device_page_model.dart';

class MyDevicePageWidget extends StatefulWidget {
  const MyDevicePageWidget({super.key});

  @override
  State<MyDevicePageWidget> createState() => _MyDevicePageWidgetState();
}

class _MyDevicePageWidgetState extends State<MyDevicePageWidget> {
  late MyDevicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyDevicePageModel());

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
                    model: _model.myDevicePageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const MyDevicePageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.myDevicePageTabletModel,
                    updateCallback: () => setState(() {}),
                    child: const MyDevicePageTabletWidget(),
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
                    model: _model.myDevicePageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const MyDevicePageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
