import '/flutter_flow/flutter_flow_util.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
