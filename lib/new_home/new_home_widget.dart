import '/components/new_home_desktop1_widget.dart';
import '/components/new_home_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'new_home_model.dart';
export 'new_home_model.dart';

class NewHomeWidget extends StatefulWidget {
  const NewHomeWidget({super.key});

  @override
  State<NewHomeWidget> createState() => _NewHomeWidgetState();
}

class _NewHomeWidgetState extends State<NewHomeWidget> {
  late NewHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewHomeModel());

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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              Expanded(
                child: wrapWithModel(
                  model: _model.newHomeMobileModel,
                  updateCallback: () => setState(() {}),
                  child: const NewHomeMobileWidget(),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Expanded(
                child: wrapWithModel(
                  model: _model.newHomeDesktop1Model,
                  updateCallback: () => setState(() {}),
                  child: const NewHomeDesktop1Widget(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
