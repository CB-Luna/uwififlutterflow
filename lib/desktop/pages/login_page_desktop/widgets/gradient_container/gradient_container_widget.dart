import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gradient_container_model.dart';
export 'gradient_container_model.dart';

class GradientContainerWidget extends StatefulWidget {
  const GradientContainerWidget({super.key});

  @override
  State<GradientContainerWidget> createState() =>
      _GradientContainerWidgetState();
}

class _GradientContainerWidgetState extends State<GradientContainerWidget> {
  late GradientContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Cover3.png',
            ).image,
          ),
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(1.0, -1.0),
            end: const AlignmentDirectional(-1.0, 1.0),
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(24.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
