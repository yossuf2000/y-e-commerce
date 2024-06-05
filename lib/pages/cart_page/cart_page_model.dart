import '/components/cart_item_componant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cartItemComponant component.
  late CartItemComponantModel cartItemComponantModel1;
  // Model for cartItemComponant component.
  late CartItemComponantModel cartItemComponantModel2;
  // Model for cartItemComponant component.
  late CartItemComponantModel cartItemComponantModel3;

  @override
  void initState(BuildContext context) {
    cartItemComponantModel1 =
        createModel(context, () => CartItemComponantModel());
    cartItemComponantModel2 =
        createModel(context, () => CartItemComponantModel());
    cartItemComponantModel3 =
        createModel(context, () => CartItemComponantModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartItemComponantModel1.dispose();
    cartItemComponantModel2.dispose();
    cartItemComponantModel3.dispose();
  }
}
