// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/widgets/otpscreen_widget.dart' show OtpscreenWidget;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class OtpscreenModel extends FlutterFlowModel<OtpscreenWidget> {
//   ///  State fields for stateful widgets in this page.
//
//   final unfocusNode = FocusNode();
//   // State field(s) for TextField widget.
//   FocusNode? textFieldFocusNode;
//   TextEditingController? textController;
//   String? Function(BuildContext, String?)? textControllerValidator;
//
//   @override
//   void initState(BuildContext context) {}
//
//   @override
//   void dispose() {
//     unfocusNode.dispose();
//     textFieldFocusNode?.dispose();
//     textController?.dispose();
//   }
//
//
// }

import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/otpscreen_widget.dart' show OtpscreenWidget;

class OtpscreenModel extends FlutterFlowModel<OtpscreenWidget> {
  final unfocusNode = FocusNode();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    textController = TextEditingController();
    textFieldFocusNode = FocusNode();
    textControllerValidator = (context, value) {
      if (value == null || value.isEmpty) {
        return 'OTP is required';
      }
      return null;
    };
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

