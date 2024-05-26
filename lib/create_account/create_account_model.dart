import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtFemail widget.
  FocusNode? txtFemailFocusNode;
  TextEditingController? txtFemailTextController;
  String? Function(BuildContext, String?)? txtFemailTextControllerValidator;
  // State field(s) for txtFpassword widget.
  FocusNode? txtFpasswordFocusNode;
  TextEditingController? txtFpasswordTextController;
  late bool txtFpasswordVisibility;
  String? Function(BuildContext, String?)? txtFpasswordTextControllerValidator;
  // State field(s) for txtConfirmpassword widget.
  FocusNode? txtConfirmpasswordFocusNode;
  TextEditingController? txtConfirmpasswordTextController;
  late bool txtConfirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtFpasswordVisibility = false;
    txtConfirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtFemailFocusNode?.dispose();
    txtFemailTextController?.dispose();

    txtFpasswordFocusNode?.dispose();
    txtFpasswordTextController?.dispose();

    txtConfirmpasswordFocusNode?.dispose();
    txtConfirmpasswordTextController?.dispose();
  }
}
