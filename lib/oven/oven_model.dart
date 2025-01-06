import '/flutter_flow/flutter_flow_util.dart';
import 'oven_widget.dart' show OvenWidget;
import 'package:flutter/material.dart';

class OvenModel extends FlutterFlowModel<OvenWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? tVimg;
  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? tVSolution;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? query;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
