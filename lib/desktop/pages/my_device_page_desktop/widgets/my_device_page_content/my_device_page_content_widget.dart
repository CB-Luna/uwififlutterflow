import '/desktop/pages/my_device_page_desktop/widgets/device/device_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'my_device_page_content_model.dart';
export 'my_device_page_content_model.dart';

class MyDevicePageContentWidget extends StatefulWidget {
  const MyDevicePageContentWidget({super.key});

  @override
  State<MyDevicePageContentWidget> createState() =>
      _MyDevicePageContentWidgetState();
}

class _MyDevicePageContentWidgetState extends State<MyDevicePageContentWidget> {
  late MyDevicePageContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyDevicePageContentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 0.15,
            decoration: const BoxDecoration(
              color: Color(0x00F1F4F8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Devices',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 34.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: AutoSizeText(
                    'Manage and schedule devices on\nyour network',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).tertiary,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 15.0,
                  endIndent: 15.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              wrapWithModel(
                model: _model.deviceModel1,
                updateCallback: () => setState(() {}),
                child: const DeviceWidget(),
              ),
              wrapWithModel(
                model: _model.deviceModel2,
                updateCallback: () => setState(() {}),
                child: const DeviceWidget(),
              ),
              wrapWithModel(
                model: _model.deviceModel3,
                updateCallback: () => setState(() {}),
                child: const DeviceWidget(),
              ),
            ].divide(const SizedBox(height: 20.0)),
          ),
        ),
      ],
    );
  }
}
