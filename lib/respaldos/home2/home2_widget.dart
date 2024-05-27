import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/home_page_mobile/home_mobile/home_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'home2_model.dart';
export 'home2_model.dart';

class Home2Widget extends StatefulWidget {
  const Home2Widget({
    super.key,
    this.currentUserIdAPI,
    this.currenUserEmailAPI,
    this.currentUserAcessTokenAPI,
  });

  final String? currentUserIdAPI;
  final String? currenUserEmailAPI;
  final String? currentUserAcessTokenAPI;

  @override
  State<Home2Widget> createState() => _Home2WidgetState();
}

class _Home2WidgetState extends State<Home2Widget> {
  late Home2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Home2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: wrapWithModel(
        model: _model.homeMobileModel,
        updateCallback: () => setState(() {}),
        child: const HomeMobileWidget(),
      ),
    );
  }
}
