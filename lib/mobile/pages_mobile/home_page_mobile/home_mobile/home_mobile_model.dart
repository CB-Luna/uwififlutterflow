import '/flutter_flow/flutter_flow_util.dart';
import 'home_mobile_widget.dart' show HomeMobileWidget;
import 'package:flutter/material.dart';

class HomeMobileModel extends FlutterFlowModel<HomeMobileWidget> {
  ///  Local state fields for this component.

  bool? showMenu;

  List<int> listField = [];
  void addToListField(int item) => listField.add(item);
  void removeFromListField(int item) => listField.remove(item);
  void removeAtIndexFromListField(int index) => listField.removeAt(index);
  void insertAtIndexInListField(int index, int item) =>
      listField.insert(index, item);
  void updateListFieldAtIndex(int index, Function(int) updateFn) =>
      listField[index] = updateFn(listField[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
