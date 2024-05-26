import '/flutter_flow/flutter_flow_util.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'produtos_list_widget.dart' show ProdutosListWidget;
import 'package:flutter/material.dart';

class ProdutosListModel extends FlutterFlowModel<ProdutosListWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? produtolistController;
  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    produtolistController?.finish();
    unfocusNode.dispose();
  }
}
