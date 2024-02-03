import '/flutter_flow/flutter_flow_util.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:flutter/material.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  String? _yourNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Address widget.
  FocusNode? addressFocusNode1;
  TextEditingController? addressController1;
  String? Function(BuildContext, String?)? addressController1Validator;
  String? _addressController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Address widget.
  FocusNode? addressFocusNode2;
  TextEditingController? addressController2;
  String? Function(BuildContext, String?)? addressController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    yourNameControllerValidator = _yourNameControllerValidator;
    addressController1Validator = _addressController1Validator;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    addressFocusNode1?.dispose();
    addressController1?.dispose();

    addressFocusNode2?.dispose();
    addressController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
