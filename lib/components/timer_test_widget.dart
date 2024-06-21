import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'timer_test_model.dart';
export 'timer_test_model.dart';

class TimerTestWidget extends StatefulWidget {
  const TimerTestWidget({
    super.key,
    this.tiempo,
  });

  final int? tiempo;

  @override
  State<TimerTestWidget> createState() => _TimerTestWidgetState();
}

class _TimerTestWidgetState extends State<TimerTestWidget> {
  late TimerTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerTestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowTimer(
      initialTime: widget.tiempo!,
      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
        value,
        hours: false,
        minute: false,
        milliSecond: false,
      ),
      controller: _model.timerController,
      updateStateInterval: const Duration(milliseconds: 1000),
      onChanged: (value, displayTime, shouldUpdate) {
        _model.timerMilliseconds = value;
        _model.timerValue = displayTime;
        if (shouldUpdate) setState(() {});
      },
      textAlign: TextAlign.start,
      style: FlutterFlowTheme.of(context).headlineSmall.override(
            fontFamily: 'Inter',
            color: const Color(0xFF5A5A5A),
            fontSize: 20.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.bold,
            useGoogleFonts: false,
          ),
    );
  }
}
