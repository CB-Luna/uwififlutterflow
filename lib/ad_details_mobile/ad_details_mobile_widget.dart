import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ad_details/ad_details_widget.dart';
import 'package:flutter/material.dart';
import 'ad_details_mobile_model.dart';
export 'ad_details_mobile_model.dart';

class AdDetailsMobileWidget extends StatefulWidget {
  const AdDetailsMobileWidget({
    super.key,
    this.adId,
    this.adPoster,
    this.adTitle,
    this.adOverview,
    this.video,
  });

  final int? adId;
  final String? adPoster;
  final String? adTitle;
  final String? adOverview;
  final String? video;

  @override
  State<AdDetailsMobileWidget> createState() => _AdDetailsMobileWidgetState();
}

class _AdDetailsMobileWidgetState extends State<AdDetailsMobileWidget> {
  late AdDetailsMobileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdDetailsMobileModel());

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
          child: wrapWithModel(
            model: _model.adDetailsModel,
            updateCallback: () => setState(() {}),
            child: AdDetailsWidget(
              adId: widget.adId,
              adPoster: widget.adPoster,
              adTitle: widget.adTitle!,
              adOverview: widget.adOverview,
              video: widget.video,
            ),
          ),
        ),
      ),
    );
  }
}
