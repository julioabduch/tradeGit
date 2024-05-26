import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFsearchSupplier widget.
  FocusNode? txtFsearchSupplierFocusNode;
  TextEditingController? txtFsearchSupplierTextController;
  String? Function(BuildContext, String?)?
      txtFsearchSupplierTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFsearchSupplierFocusNode?.dispose();
    txtFsearchSupplierTextController?.dispose();
  }
}
