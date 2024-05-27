import '/flutter_flow/flutter_flow_util.dart';
import '/mobile/pages_mobile/support_page_mobile/support_page_mobile/support_page_mobile_widget.dart';
import 'support_copy2_copy_widget.dart' show SupportCopy2CopyWidget;
import 'package:flutter/material.dart';

class SupportCopy2CopyModel extends FlutterFlowModel<SupportCopy2CopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for support_page_mobile component.
  late SupportPageMobileModel supportPageMobileModel;

  @override
  void initState(BuildContext context) {
    supportPageMobileModel =
        createModel(context, () => SupportPageMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    supportPageMobileModel.dispose();
  }
}
