import '/desktop/pages/login_page_desktop/widgets/gradient_container/gradient_container_widget.dart';
import '/desktop/pages/login_page_desktop/widgets/login_container/login_container_widget.dart';
import '/desktop/pages/login_page_desktop/widgets/singup_container/singup_container_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'login_page_desktop_model.dart';
export 'login_page_desktop_model.dart';

class LoginPageDesktopWidget extends StatefulWidget {
  const LoginPageDesktopWidget({super.key});

  @override
  State<LoginPageDesktopWidget> createState() => _LoginPageDesktopWidgetState();
}

class _LoginPageDesktopWidgetState extends State<LoginPageDesktopWidget> {
  late LoginPageDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageDesktopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 10,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: FlipCard(
                      fill: Fill.fillBack,
                      direction: FlipDirection.HORIZONTAL,
                      speed: 400,
                      front: wrapWithModel(
                        model: _model.loginContainerModel,
                        updateCallback: () => setState(() {}),
                        child: const LoginContainerWidget(),
                      ),
                      back: wrapWithModel(
                        model: _model.singupContainerModel,
                        updateCallback: () => setState(() {}),
                        child: const SingupContainerWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Expanded(
              flex: 10,
              child: wrapWithModel(
                model: _model.gradientContainerModel,
                updateCallback: () => setState(() {}),
                child: const GradientContainerWidget(),
              ),
            ),
        ],
      ),
    );
  }
}
