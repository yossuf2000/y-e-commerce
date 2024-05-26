import '/components/add_componant_v_widget.dart';
import '/components/add_componant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchResultPage widget.
  FocusNode? searchResultPageFocusNode;
  TextEditingController? searchResultPageTextController;
  String? Function(BuildContext, String?)?
      searchResultPageTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for addComponant component.
  late AddComponantModel addComponantModel1;
  // Model for addComponant component.
  late AddComponantModel addComponantModel2;
  // Model for addComponant component.
  late AddComponantModel addComponantModel3;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel1;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel2;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel3;

  @override
  void initState(BuildContext context) {
    addComponantModel1 = createModel(context, () => AddComponantModel());
    addComponantModel2 = createModel(context, () => AddComponantModel());
    addComponantModel3 = createModel(context, () => AddComponantModel());
    addComponantVModel1 = createModel(context, () => AddComponantVModel());
    addComponantVModel2 = createModel(context, () => AddComponantVModel());
    addComponantVModel3 = createModel(context, () => AddComponantVModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchResultPageFocusNode?.dispose();
    searchResultPageTextController?.dispose();

    addComponantModel1.dispose();
    addComponantModel2.dispose();
    addComponantModel3.dispose();
    addComponantVModel1.dispose();
    addComponantVModel2.dispose();
    addComponantVModel3.dispose();
  }
}
