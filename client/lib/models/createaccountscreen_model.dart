// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/widgets/createaccountscreen_widget.dart' show CreateaccountscreenWidget;
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class CreateaccountscreenModel
//     extends FlutterFlowModel<CreateaccountscreenWidget> {
//   ///  State fields for stateful widgets in this page.
//
//   final unfocusNode = FocusNode();
//   final formKey2 = GlobalKey<FormState>();
//   final formKey1 = GlobalKey<FormState>();
//   // State field(s) for DropDown widget.
//   String? dropDownValue;
//   FormFieldController<String>? dropDownValueController;
//   // State field(s) for TextField widget.
//   FocusNode? textFieldFocusNode;
//   TextEditingController? textController;
//   String? Function(BuildContext, String?)? textControllerValidator;
//   // State field(s) for Checkbox widget.
//   bool? checkboxValue;
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
// }
//


import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/ApiService.dart';
import '../widgets/createaccountscreen_widget.dart';



class CreateaccountscreenModel extends FlutterFlowModel<CreateaccountscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  // ApiService instance
  final ApiService apiService = ApiService();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  // Example method to create a user
  Future<void> createUser(String phoneNumber) async {
    try {
      final response = await apiService.createUser(phoneNumber);
      print('User created: $response');
    } catch (e) {
      print('Failed to create user: $e');
    }
  }
}

