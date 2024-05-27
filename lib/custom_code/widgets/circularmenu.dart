// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:circular_menu/circular_menu.dart';

class Circularmenu extends StatefulWidget {
  const Circularmenu({
    super.key,
    this.width,
    this.height,
    required this.icon,
    required this.color,
  });

  final double? width;
  final double? height;
  final Icons icon;
  final Color color;

  @override
  State<Circularmenu> createState() => _CircularmenuState();
}

class _CircularmenuState extends State<Circularmenu> {
  @override
  Widget build(BuildContext context) {
    var _colorName;
    var _color;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Flutter Circular Menu'),
        ),
        body: CircularMenu(
          alignment: Alignment.bottomCenter,
          backgroundWidget: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                        TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
          toggleButtonColor: Colors.pink,
          items: [
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                icon: Icons.search,
                color: Colors.blue,
                onTap: () {
                  setState(() {
                    _color = Colors.blue;
                    _colorName = 'Blue';
                  });
                }),
            CircularMenuItem(
                icon: Icons.settings,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                    _color = Colors.orange;
                    _colorName = 'Orange';
                  });
                }),
          ],
        ),
      ),
    );
  }
}

CircularMenu(
    {required Alignment alignment,
    required Center backgroundWidget,
    required MaterialColor toggleButtonColor,
    required List<dynamic> items}) {}
