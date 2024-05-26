import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_category_widget.dart' show AddCategoryWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class AddCategoryModel extends FlutterFlowModel<AddCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? addcategoryController;
  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtLCategoryName widget.
  FocusNode? txtLCategoryNameFocusNode;
  TextEditingController? txtLCategoryNameTextController;
  String? Function(BuildContext, String?)?
      txtLCategoryNameTextControllerValidator;
  String? _txtLCategoryNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd1mkiyz2' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        '43o0kh7x' /* write at least 4 letters */,
      );
    }

    return null;
  }

  // State field(s) for dropCategory widget.
  String? dropCategoryValue;
  FormFieldController<String>? dropCategoryValueController;

  @override
  void initState(BuildContext context) {
    txtLCategoryNameTextControllerValidator =
        _txtLCategoryNameTextControllerValidator;
  }

  @override
  void dispose() {
    addcategoryController?.finish();
    unfocusNode.dispose();
    txtLCategoryNameFocusNode?.dispose();
    txtLCategoryNameTextController?.dispose();
  }
}
