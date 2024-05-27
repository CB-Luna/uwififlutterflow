import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _systemMessage = prefs.getString('ff_systemMessage') ?? _systemMessage;
    });
    _safeInit(() {
      _userReinforcement =
          prefs.getString('ff_userReinforcement') ?? _userReinforcement;
    });
    _safeInit(() {
      _gptOpener = prefs.getString('ff_gptOpener') ?? _gptOpener;
    });
    _safeInit(() {
      _Active = prefs.getBool('ff_Active') ?? _Active;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _systemMessage =
      'Assistant that helps answer any questions people may have!';
  String get systemMessage => _systemMessage;
  set systemMessage(String value) {
    _systemMessage = value;
    prefs.setString('ff_systemMessage', value);
  }

  String _userReinforcement =
      'Hello! Just to reiterate, you are a helpful AI Support assistant that helps answer any internet trouble questions people may have!';
  String get userReinforcement => _userReinforcement;
  set userReinforcement(String value) {
    _userReinforcement = value;
    prefs.setString('ff_userReinforcement', value);
  }

  String _gptOpener = 'How can I help you today?';
  String get gptOpener => _gptOpener;
  set gptOpener(String value) {
    _gptOpener = value;
    prefs.setString('ff_gptOpener', value);
  }

  bool _awaitingReply = false;
  bool get awaitingReply => _awaitingReply;
  set awaitingReply(bool value) {
    _awaitingReply = value;
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String value) {
    _prompt = value;
  }

  bool _Active = true;
  bool get Active => _Active;
  set Active(bool value) {
    _Active = value;
    prefs.setBool('ff_Active', value);
  }

  bool _local = false;
  bool get local => _local;
  set local(bool value) {
    _local = value;
  }

  List<int> _charty = [];
  List<int> get charty => _charty;
  set charty(List<int> value) {
    _charty = value;
  }

  void addToCharty(int value) {
    _charty.add(value);
  }

  void removeFromCharty(int value) {
    _charty.remove(value);
  }

  void removeAtIndexFromCharty(int index) {
    _charty.removeAt(index);
  }

  void updateChartyAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _charty[index] = updateFn(_charty[index]);
  }

  void insertAtIndexInCharty(int index, int value) {
    _charty.insert(index, value);
  }

  List<int> _chartx = [];
  List<int> get chartx => _chartx;
  set chartx(List<int> value) {
    _chartx = value;
  }

  void addToChartx(int value) {
    _chartx.add(value);
  }

  void removeFromChartx(int value) {
    _chartx.remove(value);
  }

  void removeAtIndexFromChartx(int index) {
    _chartx.removeAt(index);
  }

  void updateChartxAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _chartx[index] = updateFn(_chartx[index]);
  }

  void insertAtIndexInChartx(int index, int value) {
    _chartx.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
