import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/home_page_mobile/home_mobile/home_mobile_widget.dart';
import 'home2_widget.dart' show Home2Widget;
import 'package:flutter/material.dart';

class Home2Model extends FlutterFlowModel<Home2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for home_mobile component.
  late HomeMobileModel homeMobileModel;

  @override
  void initState(BuildContext context) {
    homeMobileModel = createModel(context, () => HomeMobileModel());
  }

  @override
  void dispose() {
    homeMobileModel.dispose();
  }
}
