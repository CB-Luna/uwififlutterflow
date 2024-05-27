import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/ads_mobile/ad_details/ad_details_widget.dart';
import 'ad_details_mobile_widget.dart' show AdDetailsMobileWidget;
import 'package:flutter/material.dart';

class AdDetailsMobileModel extends FlutterFlowModel<AdDetailsMobileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdDetails component.
  late AdDetailsModel adDetailsModel;

  @override
  void initState(BuildContext context) {
    adDetailsModel = createModel(context, () => AdDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adDetailsModel.dispose();
  }
}
