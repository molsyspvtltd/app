// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:dnalyst/widgets/intake_form_widget.dart' show IntakeFormWidget;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'package:provider/provider.dart';
//
// class IntakeFormModel extends FlutterFlowModel<IntakeFormWidget> {
//   ///  State fields for stateful widgets in this page.
//
//   // State field(s) for fullName widget.
//   FocusNode? fullNameFocusNode;
//   TextEditingController? fullNameTextController;
//   String? Function(BuildContext, String?)? fullNameTextControllerValidator;
//   // State field(s) for emailID widget.
//   FocusNode? emailIDFocusNode;
//   TextEditingController? emailIDTextController;
//   final emailIDMask = MaskTextInputFormatter(mask: '##/##/####');
//   String? Function(BuildContext, String?)? emailIDTextControllerValidator;
//   // State field(s) for age widget.
//   FocusNode? ageFocusNode;
//   TextEditingController? ageTextController;
//   String? Function(BuildContext, String?)? ageTextControllerValidator;
//   // State field(s) for dateOfBirth widget.
//   FocusNode? dateOfBirthFocusNode;
//   TextEditingController? dateOfBirthTextController;
//   final dateOfBirthMask = MaskTextInputFormatter(mask: '##/##/####');
//   String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;
//   // State field(s) for ChoiceChips widget.
//   FormFieldController<List<String>>? choiceChipsValueController;
//   String? get choiceChipsValue =>
//       choiceChipsValueController?.value?.firstOrNull;
//
//   get unfocusNode => null;
//   set choiceChipsValue(String? val) =>
//       choiceChipsValueController?.value = val != null ? [val] : [];
//
//   @override
//   void initState(BuildContext context) {}
//
//   @override
//   void dispose() {
//     fullNameFocusNode?.dispose();
//     fullNameTextController?.dispose();
//
//     emailIDFocusNode?.dispose();
//     emailIDTextController?.dispose();
//
//     ageFocusNode?.dispose();
//     ageTextController?.dispose();
//
//     dateOfBirthFocusNode?.dispose();
//     dateOfBirthTextController?.dispose();
//
//   }
// }






//backend code
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/intake_form_widget.dart';

import 'package:flutter/material.dart';

class IntakeFormModel extends ChangeNotifier {
  // State fields for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;

  // State fields for emailID widget.
  FocusNode? emailIDFocusNode;
  TextEditingController? emailIDTextController;
  final emailIDMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? emailIDTextControllerValidator;

  // State fields for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;

  // State fields for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthTextController;
  final dateOfBirthMask = MaskTextInputFormatter(mask: '####/##/##');
  String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;

  // State fields for ChoiceChips widget.
  String? choiceChipsValue;

  void initState(BuildContext context) {
    fullNameTextController = TextEditingController();
    emailIDTextController = TextEditingController();
    ageTextController = TextEditingController();
    dateOfBirthTextController = TextEditingController();
  }

  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
    emailIDFocusNode?.dispose();
    emailIDTextController?.dispose();
    ageFocusNode?.dispose();
    ageTextController?.dispose();
    dateOfBirthFocusNode?.dispose();
    dateOfBirthTextController?.dispose();
    super.dispose();
  }
}
