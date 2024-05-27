import '/flutter_flow/flutter_flow_util.dart';
import 'ads_search_page_mobile_widget.dart' show AdsSearchPageMobileWidget;
import 'package:flutter/material.dart';

class AdsSearchPageMobileModel
    extends FlutterFlowModel<AdsSearchPageMobileWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for search_text widget.
  FocusNode? searchTextFocusNode;
  TextEditingController? searchTextTextController;
  String? Function(BuildContext, String?)? searchTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextFocusNode?.dispose();
    searchTextTextController?.dispose();
  }
}
