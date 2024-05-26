import '/flutter_flow/flutter_flow_util.dart';
import 'my_button_choice_comp_widget.dart' show MyButtonChoiceCompWidget;
import 'package:flutter/material.dart';

class MyButtonChoiceCompModel
    extends FlutterFlowModel<MyButtonChoiceCompWidget> {
  ///  Local state fields for this component.

  List<String> choicesnames = ['Popularity', 'Newest', 'Oldest', 'WTF', 'WTAF'];
  void addToChoicesnames(String item) => choicesnames.add(item);
  void removeFromChoicesnames(String item) => choicesnames.remove(item);
  void removeAtIndexFromChoicesnames(int index) => choicesnames.removeAt(index);
  void insertAtIndexInChoicesnames(int index, String item) =>
      choicesnames.insert(index, item);
  void updateChoicesnamesAtIndex(int index, Function(String) updateFn) =>
      choicesnames[index] = updateFn(choicesnames[index]);

  String choice = 'A';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
