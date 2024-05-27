import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notification_icon_container_model.dart';
export 'notification_icon_container_model.dart';

class NotificationIconContainerWidget extends StatefulWidget {
  const NotificationIconContainerWidget({super.key});

  @override
  State<NotificationIconContainerWidget> createState() =>
      _NotificationIconContainerWidgetState();
}

class _NotificationIconContainerWidgetState
    extends State<NotificationIconContainerWidget> {
  late NotificationIconContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationIconContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        constraints: const BoxConstraints(
          minWidth: 100.0,
          maxWidth: 100.0,
        ),
        decoration: const BoxDecoration(),
        child: FlutterFlowIconButton(
          borderColor: const Color(0x00029D30),
          borderRadius: 10.0,
          buttonSize: MediaQuery.sizeOf(context).width * 1.0,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          icon: Icon(
            Icons.notifications_sharp,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 35.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ),
    );
  }
}
