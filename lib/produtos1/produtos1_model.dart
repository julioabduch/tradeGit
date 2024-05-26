import '/flutter_flow/flutter_flow_util.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'produtos1_widget.dart' show Produtos1Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Produtos1Model extends FlutterFlowModel<Produtos1Widget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? produtos1Controller;
  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    produtos1Controller?.finish();
    unfocusNode.dispose();
  }
}
