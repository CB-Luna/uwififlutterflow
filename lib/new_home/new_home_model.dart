import '/components/new_home_desktop1_widget.dart';
import '/components/new_home_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_home_widget.dart' show NewHomeWidget;
import 'package:flutter/material.dart';

class NewHomeModel extends FlutterFlowModel<NewHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NewHome_Mobile component.
  late NewHomeMobileModel newHomeMobileModel;
  // Model for NewHome_Desktop1 component.
  late NewHomeDesktop1Model newHomeDesktop1Model;

  @override
  void initState(BuildContext context) {
    newHomeMobileModel = createModel(context, () => NewHomeMobileModel());
    newHomeDesktop1Model = createModel(context, () => NewHomeDesktop1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newHomeMobileModel.dispose();
    newHomeDesktop1Model.dispose();
  }
}
