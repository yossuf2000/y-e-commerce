import '/componants/h_product_componant/h_product_componant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for enterEmailText widget.
  FocusNode? enterEmailTextFocusNode;
  TextEditingController? enterEmailTextTextController;
  String? Function(BuildContext, String?)?
      enterEmailTextTextControllerValidator;
  // Model for hProductComponant component.
  late HProductComponantModel hProductComponantModel;

  @override
  void initState(BuildContext context) {
    hProductComponantModel =
        createModel(context, () => HProductComponantModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    enterEmailTextFocusNode?.dispose();
    enterEmailTextTextController?.dispose();

    hProductComponantModel.dispose();
  }
}
