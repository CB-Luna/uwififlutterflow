import '/components/new_wallet_desktop_widget.dart';
import '/components/new_wallet_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_wallet_widget.dart' show NewWalletWidget;
import 'package:flutter/material.dart';

class NewWalletModel extends FlutterFlowModel<NewWalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NewWallet_Desktop component.
  late NewWalletDesktopModel newWalletDesktopModel;
  // Model for NewWallet_Mobile component.
  late NewWalletMobileModel newWalletMobileModel;

  @override
  void initState(BuildContext context) {
    newWalletDesktopModel = createModel(context, () => NewWalletDesktopModel());
    newWalletMobileModel = createModel(context, () => NewWalletMobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newWalletDesktopModel.dispose();
    newWalletMobileModel.dispose();
  }
}
