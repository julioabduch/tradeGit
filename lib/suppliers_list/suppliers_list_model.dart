import '/flutter_flow/flutter_flow_util.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'suppliers_list_widget.dart' show SuppliersListWidget;
import 'package:flutter/material.dart';

class SuppliersListModel extends FlutterFlowModel<SuppliersListWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? listsuppliersController;
  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listsuppliersController?.finish();
    unfocusNode.dispose();
  }
}
