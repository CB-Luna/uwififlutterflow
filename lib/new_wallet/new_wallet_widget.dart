import '/components/new_wallet_desktop_widget.dart';
import '/components/new_wallet_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'new_wallet_model.dart';
export 'new_wallet_model.dart';

class NewWalletWidget extends StatefulWidget {
  const NewWalletWidget({super.key});

  @override
  State<NewWalletWidget> createState() => _NewWalletWidgetState();
}

class _NewWalletWidgetState extends State<NewWalletWidget> {
  late NewWalletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewWalletModel());

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
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Expanded(
                child: wrapWithModel(
                  model: _model.newWalletDesktopModel,
                  updateCallback: () => setState(() {}),
                  child: const NewWalletDesktopWidget(),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              wrapWithModel(
                model: _model.newWalletMobileModel,
                updateCallback: () => setState(() {}),
                child: const NewWalletMobileWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
