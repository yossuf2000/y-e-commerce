import '/components/add_componant_copy_widget.dart';
import '/components/add_componant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for enterEmailText widget.
  FocusNode? enterEmailTextFocusNode;
  TextEditingController? enterEmailTextTextController;
  String? Function(BuildContext, String?)?
      enterEmailTextTextControllerValidator;
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
  // Model for addComponantCopy component.
  late AddComponantCopyModel addComponantCopyModel1;
  // Model for addComponantCopy component.
  late AddComponantCopyModel addComponantCopyModel2;
  // Model for addComponantCopy component.
  late AddComponantCopyModel addComponantCopyModel3;

  @override
  void initState(BuildContext context) {
    addComponantModel1 = createModel(context, () => AddComponantModel());
    addComponantModel2 = createModel(context, () => AddComponantModel());
    addComponantModel3 = createModel(context, () => AddComponantModel());
    addComponantCopyModel1 =
        createModel(context, () => AddComponantCopyModel());
    addComponantCopyModel2 =
        createModel(context, () => AddComponantCopyModel());
    addComponantCopyModel3 =
        createModel(context, () => AddComponantCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    enterEmailTextFocusNode?.dispose();
    enterEmailTextTextController?.dispose();

    addComponantModel1.dispose();
    addComponantModel2.dispose();
    addComponantModel3.dispose();
    addComponantCopyModel1.dispose();
    addComponantCopyModel2.dispose();
    addComponantCopyModel3.dispose();
  }
}
