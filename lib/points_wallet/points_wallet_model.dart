import '/flutter_flow/flutter_flow_util.dart';
import 'points_wallet_widget.dart' show PointsWalletWidget;
import 'package:flutter/material.dart';

class PointsWalletModel extends FlutterFlowModel<PointsWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
