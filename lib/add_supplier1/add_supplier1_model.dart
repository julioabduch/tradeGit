import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_supplier1_widget.dart' show AddSupplier1Widget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AddSupplier1Model extends FlutterFlowModel<AddSupplier1Widget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> listaImagens1 = [];
  void addToListaImagens1(FFUploadedFile item) => listaImagens1.add(item);
  void removeFromListaImagens1(FFUploadedFile item) =>
      listaImagens1.remove(item);
  void removeAtIndexFromListaImagens1(int index) =>
      listaImagens1.removeAt(index);
  void insertAtIndexInListaImagens1(int index, FFUploadedFile item) =>
      listaImagens1.insert(index, item);
  void updateListaImagens1AtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listaImagens1[index] = updateFn(listaImagens1[index]);

  int? contador = 0;

  CadastroSuppliersTradeRow? varSupplierID;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? addsupplierController;
  final unfocusNode = FocusNode();
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

  bool isDataUploading4 = false;
  List<FFUploadedFile> uploadedLocalFiles4 = [];
  List<String> uploadedFileUrls4 = [];

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for dropCategory widget.
  String? dropCategoryValue;
  FormFieldController<String>? dropCategoryValueController;
  // State field(s) for txtNotes widget.
  FocusNode? txtNotesFocusNode;
  TextEditingController? txtNotesTextController;
  String? Function(BuildContext, String?)? txtNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addsupplierController?.finish();
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    txtNotesFocusNode?.dispose();
    txtNotesTextController?.dispose();
  }

  /// Action blocks.
  Future salvanalista(
    BuildContext context, {
    int? index,
    FFUploadedFile? imagem,
  }) async {
    if (listaImagens1.length > index!) {
      updateListaImagens1AtIndex(
        index,
        (_) => imagem!,
      );
    } else {
      addToListaImagens1(imagem!);
    }
  }
}
