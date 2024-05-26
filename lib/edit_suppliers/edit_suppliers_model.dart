import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_suppliers_widget.dart' show EditSuppliersWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class EditSuppliersModel extends FlutterFlowModel<EditSuppliersWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> listaimagensedit = [];
  void addToListaimagensedit(FFUploadedFile item) => listaimagensedit.add(item);
  void removeFromListaimagensedit(FFUploadedFile item) =>
      listaimagensedit.remove(item);
  void removeAtIndexFromListaimagensedit(int index) =>
      listaimagensedit.removeAt(index);
  void insertAtIndexInListaimagensedit(int index, FFUploadedFile item) =>
      listaimagensedit.insert(index, item);
  void updateListaimagenseditAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listaimagensedit[index] = updateFn(listaimagensedit[index]);

  int? contador1 = 0;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? editsupplierController;
  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  AudioPlayer? soundPlayer;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // State field(s) for txtFsupplierName widget.
  FocusNode? txtFsupplierNameFocusNode;
  TextEditingController? txtFsupplierNameTextController;
  String? Function(BuildContext, String?)?
      txtFsupplierNameTextControllerValidator;
  String? _txtFsupplierNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ncst3axh' /* Field is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        '4h0b0rsn' /* write at least 4 letters */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtFnotes widget.
  FocusNode? txtFnotesFocusNode;
  TextEditingController? txtFnotesTextController;
  String? Function(BuildContext, String?)? txtFnotesTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtFsupplierNameTextControllerValidator =
        _txtFsupplierNameTextControllerValidator;
  }

  @override
  void dispose() {
    editsupplierController?.finish();
    unfocusNode.dispose();
    txtFsupplierNameFocusNode?.dispose();
    txtFsupplierNameTextController?.dispose();

    txtFnotesFocusNode?.dispose();
    txtFnotesTextController?.dispose();
  }

  /// Action blocks.
  Future salvalistaeditsupplier(
    BuildContext context, {
    int? index,
    FFUploadedFile? imagem,
  }) async {
    if (listaimagensedit.length > index!) {
      updateListaimagenseditAtIndex(
        index,
        (_) => imagem!,
      );
    } else {
      addToListaimagensedit(imagem!);
    }
  }
}
