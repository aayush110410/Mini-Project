import '/flutter_flow/flutter_flow_util.dart';
import 'gemini_widget.dart' show GeminiWidget;
import 'package:flutter/material.dart';

class GeminiModel extends FlutterFlowModel<GeminiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? myAnswer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
