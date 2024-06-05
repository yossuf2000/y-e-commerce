import '/componants/add_componant_v/add_componant_v_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:flutter/material.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel1;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel2;
  // Model for addComponantV component.
  late AddComponantVModel addComponantVModel3;

  @override
  void initState(BuildContext context) {
    addComponantVModel1 = createModel(context, () => AddComponantVModel());
    addComponantVModel2 = createModel(context, () => AddComponantVModel());
    addComponantVModel3 = createModel(context, () => AddComponantVModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    addComponantVModel1.dispose();
    addComponantVModel2.dispose();
    addComponantVModel3.dispose();
  }
}
