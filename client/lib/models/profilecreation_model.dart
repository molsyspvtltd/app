// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/widgets/profilecreation_widget.dart' show ProfilecreationWidget;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class ProfilecreationModel extends FlutterFlowModel<ProfilecreationWidget> {
//   ///  State fields for stateful widgets in this page.
//
//   bool isDataUploading = false;
//   FFUploadedFile uploadedLocalFile =
//   FFUploadedFile(bytes: Uint8List.fromList([]));
//   String uploadedFileUrl = '';
//
//   // State field(s) for yourName widget.
//   FocusNode? yourNameFocusNode;
//   TextEditingController? yourNameTextController;
//   String? Function(BuildContext, String?)? yourNameTextControllerValidator;
//   // State field(s) for city widget.
//   FocusNode? cityFocusNode;
//   TextEditingController? cityTextController;
//   String? Function(BuildContext, String?)? cityTextControllerValidator;
//   // State field(s) for state widget.
//   String? stateValue;
//   FormFieldController<String>? stateValueController;
//   // State field(s) for myBio widget.
//   FocusNode? myBioFocusNode;
//   TextEditingController? myBioTextController;
//   String? Function(BuildContext, String?)? myBioTextControllerValidator;
//
//   @override
//   void initState(BuildContext context) {}
//
//   @override
//   void dispose() {
//     yourNameFocusNode?.dispose();
//     yourNameTextController?.dispose();
//
//     cityFocusNode?.dispose();
//     cityTextController?.dispose();
//
//     myBioFocusNode?.dispose();
//     myBioTextController?.dispose();
//   }
// }
