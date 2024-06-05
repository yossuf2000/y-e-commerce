import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_page_widget.dart' show SearchResultPageWidget;
import 'package:flutter/material.dart';

class SearchResultPageModel extends FlutterFlowModel<SearchResultPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
