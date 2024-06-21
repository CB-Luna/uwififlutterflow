// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:video_player/video_player.dart';

class CustomVideoWidget extends StatefulWidget {
  final double? width;
  final double? height;
  final int videoId;
  final String video;
  //final bool isActive; // Indica si el video está activo o no
  final int customerId;
  final Future Function(int videoId, int customerId) sendData;

  CustomVideoWidget({
    super.key,
    this.width,
    this.height,
    required this.videoId,
    required this.video,
    //required this.isActive,
    required this.customerId,
    required this.sendData,
  });

  @override
  _CustomVideoWidgetState createState() => _CustomVideoWidgetState();
}

class _CustomVideoWidgetState extends State<CustomVideoWidget> {
  Timer? _timer;
  int _watchTime = 0;

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.video))
      ..setLooping(true)
      ..setVolume(1)
      ..initialize().then((_) {
        print('LOG: ${widget.videoId} VIDEO INIT');
        setState(() {});
        _controller.play();
        //if (widget.isActive) {
        print('LOG: ${widget.videoId} INIT ACTIVE');
        _startTimer();
        /* } else {
          print('LOG: ${widget.videoId} INIT NOT ACTIVE');
          //_stopTimer();
        } */
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      });
  }

/*   @override
  void didUpdateWidget(CustomVideoWidget oldWidget) {
    print('LOG: UPDATE');
    if (widget.isActive) {
      print('LOG: ${widget.videoId} UPDATE ACTIVE');
      _startTimer();
    } else {
      print('LOG: ${widget.videoId} UPDATE NOT ACTIVE');
      //_stopTimer();
    }
    super.didUpdateWidget(oldWidget);
  } */

  @override
  void dispose() {
    try {
      print('LOG: ${widget.videoId} DISPOSE');
      _timer?.cancel();
      _controller.dispose();

      _sendUnfinishedVideoWatchData(_watchTime, paused: false);

      super.dispose();
    } catch (e) {
      print('LOG: ${widget.videoId} DISPOSE ERROR : $e');
    }
  }

  void _startTimer() {
    try {
      print('LOG: ${widget.videoId} START');
      setState(() {
        _controller.play();
      });
      if (_timer != null) {
        _timer!.cancel();
      }
      _timer = Timer.periodic(
        Duration(seconds: 1),
        (timer) {
          setState(
            () {
              _watchTime++;
              //print(_watchTime);
              if (_watchTime >= _controller.value.duration.inSeconds &&
                  _controller.value.isInitialized) {
                //_timer?.cancel();
                _watchTime = 0;
                print('LOG: ${widget.videoId} FINISHED');
                _sendVideoWatchData(widget.videoId, widget.customerId);
                //_startTimer();
                //_stopTimer();
                //_restartTimer();
              }
            },
          );
        },
      );
    } catch (e) {
      print('LOG: ${widget.videoId} START ERROR : $e');
    }
  }

  /* void _restartTimer() {
    print('LOG: ${widget.videoId} RESTART');
    setState(() {
      _watchTime = 0;
    });
    _stopTimer();
    _startTimer();
  } */

  void _pauseTimer() {
    print('LOG: ${widget.videoId} PAUSE');
    //print('${widget.videoId} Stoped');
    setState(() {
      _watchTime++;
      _controller.pause();
      _timer?.cancel();
    });

    _sendUnfinishedVideoWatchData(_watchTime);
  }

  void _stopTimer() async {
    print('LOG: ${widget.videoId} STOP');
    //print('${widget.videoId} Stoped');
    setState(() {
      _controller.pause();
      _timer?.cancel();
    });

    _sendUnfinishedVideoWatchData(_watchTime, paused: false);
  }

  Future<void> _sendVideoWatchData(int videoId, int customerId) async {
    print('SEND DATA: ${widget.videoId} finished -- ${widget.customerId}');
    await widget.sendData(videoId, customerId);
  }

  Future<void> _sendUnfinishedVideoWatchData(int watchTime,
      {paused = true}) async {
    if (_controller.value.isInitialized) {
      if (paused) {
        print(
            'SEND DATA: ${widget.videoId} paused -- ${widget.customerId} -- $_watchTime seconds viewed of ${_controller.value.duration.inSeconds}');
      } else {
        if (watchTime > 5) {
          print(
              'SEND DATA: ${widget.videoId} unfinished -- ${widget.customerId} -- $_watchTime seconds viewed of ${_controller.value.duration.inSeconds}');
        } else {
          print(
              'SEND DATA: ${widget.videoId} ignored -- ${widget.customerId} -- $_watchTime seconds viewed of ${_controller.value.duration.inSeconds}');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ),
            InkWell(
              onDoubleTap: () {
                print(
                    'SEND DATA: ${widget.videoId} liked -- ${widget.customerId}');
              },
              onTap: () {
                setState(() {
                  _controller.value.isPlaying ? _pauseTimer() : _startTimer();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
