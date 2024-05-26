import '/flutter_flow/flutter_flow_util.dart';
import 'add_produtos1_widget.dart' show AddProdutos1Widget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AddProdutos1Model extends FlutterFlowModel<AddProdutos1Widget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> listaImagens = [];
  void addToListaImagens(FFUploadedFile item) => listaImagens.add(item);
  void removeFromListaImagens(FFUploadedFile item) => listaImagens.remove(item);
  void removeAtIndexFromListaImagens(int index) => listaImagens.removeAt(index);
  void insertAtIndexInListaImagens(int index, FFUploadedFile item) =>
      listaImagens.insert(index, item);
  void updateListaImagensAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      listaImagens[index] = updateFn(listaImagens[index]);

  int? contador = 0;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? addproductController;
  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // State field(s) for txtProductName widget.
  FocusNode? txtProductNameFocusNode;
  TextEditingController? txtProductNameTextController;
  String? Function(BuildContext, String?)?
      txtProductNameTextControllerValidator;
  AudioPlayer? soundPlayer1;
  // State field(s) for txtFPriceRMB widget.
  FocusNode? txtFPriceRMBFocusNode;
  TextEditingController? txtFPriceRMBTextController;
  String? Function(BuildContext, String?)? txtFPriceRMBTextControllerValidator;
  // State field(s) for txtFPriceUSD widget.
  FocusNode? txtFPriceUSDFocusNode;
  TextEditingController? txtFPriceUSDTextController;
  String? Function(BuildContext, String?)? txtFPriceUSDTextControllerValidator;
  AudioPlayer? soundPlayer2;
  // State field(s) for txtFunitCarton widget.
  FocusNode? txtFunitCartonFocusNode;
  TextEditingController? txtFunitCartonTextController;
  String? Function(BuildContext, String?)?
      txtFunitCartonTextControllerValidator;
  AudioPlayer? soundPlayer3;
  // State field(s) for txtFMOQcarton widget.
  FocusNode? txtFMOQcartonFocusNode;
  TextEditingController? txtFMOQcartonTextController;
  String? Function(BuildContext, String?)? txtFMOQcartonTextControllerValidator;
  // State field(s) for txtFMOQunit widget.
  FocusNode? txtFMOQunitFocusNode;
  TextEditingController? txtFMOQunitTextController;
  String? Function(BuildContext, String?)? txtFMOQunitTextControllerValidator;
  AudioPlayer? soundPlayer4;
  // State field(s) for txtFcartonSize widget.
  FocusNode? txtFcartonSizeFocusNode;
  TextEditingController? txtFcartonSizeTextController;
  String? Function(BuildContext, String?)?
      txtFcartonSizeTextControllerValidator;
  AudioPlayer? soundPlayer5;
  // State field(s) for txtFleadDay widget.
  FocusNode? txtFleadDayFocusNode;
  TextEditingController? txtFleadDayTextController;
  String? Function(BuildContext, String?)? txtFleadDayTextControllerValidator;
  AudioPlayer? soundPlayer6;
  // State field(s) for txtForderCarton widget.
  FocusNode? txtForderCartonFocusNode;
  TextEditingController? txtForderCartonTextController;
  String? Function(BuildContext, String?)?
      txtForderCartonTextControllerValidator;
  // State field(s) for txtForderUnit widget.
  FocusNode? txtForderUnitFocusNode;
  TextEditingController? txtForderUnitTextController;
  String? Function(BuildContext, String?)? txtForderUnitTextControllerValidator;
  // State field(s) for txtFnote widget.
  FocusNode? txtFnoteFocusNode;
  TextEditingController? txtFnoteTextController;
  String? Function(BuildContext, String?)? txtFnoteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addproductController?.finish();
    unfocusNode.dispose();
    txtProductNameFocusNode?.dispose();
    txtProductNameTextController?.dispose();

    txtFPriceRMBFocusNode?.dispose();
    txtFPriceRMBTextController?.dispose();

    txtFPriceUSDFocusNode?.dispose();
    txtFPriceUSDTextController?.dispose();

    txtFunitCartonFocusNode?.dispose();
    txtFunitCartonTextController?.dispose();

    txtFMOQcartonFocusNode?.dispose();
    txtFMOQcartonTextController?.dispose();

    txtFMOQunitFocusNode?.dispose();
    txtFMOQunitTextController?.dispose();

    txtFcartonSizeFocusNode?.dispose();
    txtFcartonSizeTextController?.dispose();

    txtFleadDayFocusNode?.dispose();
    txtFleadDayTextController?.dispose();

    txtForderCartonFocusNode?.dispose();
    txtForderCartonTextController?.dispose();

    txtForderUnitFocusNode?.dispose();
    txtForderUnitTextController?.dispose();

    txtFnoteFocusNode?.dispose();
    txtFnoteTextController?.dispose();
  }

  /// Action blocks.
  Future salvaimagem(
    BuildContext context, {
    int? index,
    FFUploadedFile? imagem,
  }) async {
    if (listaImagens.length > index!) {
      updateListaImagensAtIndex(
        index,
        (_) => imagem!,
      );
    } else {
      addToListaImagens(imagem!);
    }
  }
}
