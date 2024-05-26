import '/flutter_flow/flutter_flow_util.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'suppliers_widget.dart' show SuppliersWidget;
import 'package:flutter/material.dart';

class SuppliersModel extends FlutterFlowModel<SuppliersWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? suppliersController;
  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    suppliersController?.finish();
    unfocusNode.dispose();
  }
}
