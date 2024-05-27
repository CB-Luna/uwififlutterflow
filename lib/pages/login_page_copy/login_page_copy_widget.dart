import '/desktop/pages/login_page_desktop/login_page_desktop/login_page_desktop_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/login_page_mobile/login_page_mobile/login_page_mobile_widget.dart';
import '/tablet/pages_tablet/login_page_tablet/login_page_tablet/login_page_tablet_widget.dart';
import 'package:flutter/material.dart';
import 'login_page_copy_model.dart';
export 'login_page_copy_model.dart';

class LoginPageCopyWidget extends StatefulWidget {
  const LoginPageCopyWidget({super.key});

  @override
  State<LoginPageCopyWidget> createState() => _LoginPageCopyWidgetState();
}

class _LoginPageCopyWidgetState extends State<LoginPageCopyWidget> {
  late LoginPageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageCopyModel());

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
                Flexible(
                  child: wrapWithModel(
                    model: _model.loginPageDesktopModel,
                    updateCallback: () => setState(() {}),
                    child: const LoginPageDesktopWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                wrapWithModel(
                  model: _model.loginPageTabletModel,
                  updateCallback: () => setState(() {}),
                  child: const LoginPageTabletWidget(),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Flexible(
                  child: wrapWithModel(
                    model: _model.loginPageMobileModel,
                    updateCallback: () => setState(() {}),
                    child: const LoginPageMobileWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
