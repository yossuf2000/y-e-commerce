import '/components/add_componant_v_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_page_widget.dart' show SearchResultPageWidget;
import 'package:flutter/material.dart';

class SearchResultPageModel extends FlutterFlowModel<SearchResultPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel1;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel2;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel3;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel4;

  @override
  void initState(BuildContext context) {
    addComponantVModel1 = createModel(context, () => AddComponantVModel());
    addComponantVModel2 = createModel(context, () => AddComponantVModel());
    addComponantVModel3 = createModel(context, () => AddComponantVModel());
    addComponantVModel4 = createModel(context, () => AddComponantVModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addComponantVModel1.dispose();
    addComponantVModel2.dispose();
    addComponantVModel3.dispose();
    addComponantVModel4.dispose();
  }
}
