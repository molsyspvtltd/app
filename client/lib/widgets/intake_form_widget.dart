import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/intake_form_model.dart';

import '../services/ApiService.dart';
export 'package:dnalyst/models/intake_form_model.dart';

// class IntakeFormWidget extends StatefulWidget {
//   const IntakeFormWidget({super.key});
//
//   @override
//   State<IntakeFormWidget> createState() => _IntakeFormWidgetState();
// }
//
// class _IntakeFormWidgetState extends State<IntakeFormWidget> {
//   late IntakeFormModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => IntakeFormModel());
//
//     _model.fullNameTextController ??= TextEditingController();
//     _model.fullNameFocusNode ??= FocusNode();
//     _model.fullNameFocusNode!.addListener(() => setState(() {}));
//     _model.emailIDTextController ??= TextEditingController();
//     _model.emailIDFocusNode ??= FocusNode();
//     _model.emailIDFocusNode!.addListener(() => setState(() {}));
//     _model.ageTextController ??= TextEditingController();
//     _model.ageFocusNode ??= FocusNode();
//     _model.ageFocusNode!.addListener(() => setState(() {}));
//     _model.dateOfBirthTextController ??= TextEditingController();
//     _model.dateOfBirthFocusNode ??= FocusNode();
//     _model.dateOfBirthFocusNode!.addListener(() => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Color(0xFFF1F4F8),
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: Image.asset(
//                 'assets/images/patientintake_bg.png',
//               ).image,
//             ),
//           ),
//           child: Container(
//             width: 100,
//             height: 100,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0x9AFFFFFF), Colors.white],
//                 stops: [0, 1],
//                 begin: AlignmentDirectional(0, -1),
//                 end: AlignmentDirectional(0, 1),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(7, 60, 7, 0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Lets Complete Your Profile',
//                         style: FlutterFlowTheme.of(context)
//                             .headlineMedium
//                             .override(
//                           fontFamily: 'Outfit',
//                           color: Colors.black,
//                           fontSize: 26,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
//                   child: Text(
//                     '* Please fill out the form below to continue.',
//                     style: FlutterFlowTheme.of(context).labelMedium.override(
//                       fontFamily: 'Outfit',
//                       color: FlutterFlowTheme.of(context).secondaryText,
//                       fontSize: 14,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, -1),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
//                     child: Container(
//                       constraints: BoxConstraints(
//                         maxWidth: 770,
//                       ),
//                       decoration: BoxDecoration(),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(17, 12, 17, 12),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextFormField(
//                               controller: _model.fullNameTextController,
//                               focusNode: _model.fullNameFocusNode,
//                               autofocus: true,
//                               textCapitalization: TextCapitalization.words,
//                               obscureText: false,
//                               decoration: InputDecoration(
//                                 labelText: 'Full Name*',
//                                 labelStyle: FlutterFlowTheme.of(context)
//                                     .labelLarge
//                                     .override(
//                                   fontFamily: 'Readex Pro',
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                 ),
//                                 hintStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 errorStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFFFF5963),
//                                   fontSize: 12,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFE5E7EB),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF6F61EF),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 filled: true,
//                                 fillColor:
//                                 (_model.fullNameFocusNode?.hasFocus ??
//                                     false)
//                                     ? Color(0x4D9489F5)
//                                     : Colors.white,
//                                 contentPadding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 20, 16, 20),
//                               ),
//                               style: FlutterFlowTheme.of(context)
//                                   .headlineMedium
//                                   .override(
//                                 fontFamily: 'Outfit',
//                                 color: Color(0xFF15161E),
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               cursorColor: Color(0xFF6F61EF),
//                               validator: _model.fullNameTextControllerValidator
//                                   .asValidator(context),
//                             ),
//                             TextFormField(
//                               controller: _model.emailIDTextController,
//                               focusNode: _model.emailIDFocusNode,
//                               autofocus: true,
//                               textCapitalization: TextCapitalization.words,
//                               obscureText: false,
//                               decoration: InputDecoration(
//                                 labelText: 'Email ID*',
//                                 labelStyle: FlutterFlowTheme.of(context)
//                                     .labelLarge
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 hintStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 errorStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFFFF5963),
//                                   fontSize: 12,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFE5E7EB),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF6F61EF),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 filled: true,
//                                 fillColor:
//                                 (_model.emailIDFocusNode?.hasFocus ?? false)
//                                     ? Color(0x4D9489F5)
//                                     : Colors.white,
//                                 contentPadding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 20, 16, 20),
//                               ),
//                               style: FlutterFlowTheme.of(context)
//                                   .bodyLarge
//                                   .override(
//                                 fontFamily: 'Figtree',
//                                 color: Color(0xFF15161E),
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               cursorColor: Color(0xFF6F61EF),
//                               validator: _model.emailIDTextControllerValidator
//                                   .asValidator(context),
//                               inputFormatters: [_model.emailIDMask],
//                             ),
//                             TextFormField(
//                               controller: _model.ageTextController,
//                               focusNode: _model.ageFocusNode,
//                               autofocus: true,
//                               textCapitalization: TextCapitalization.words,
//                               obscureText: false,
//                               decoration: InputDecoration(
//                                 labelText: 'Age*',
//                                 labelStyle: FlutterFlowTheme.of(context)
//                                     .labelLarge
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 hintStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 errorStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFFFF5963),
//                                   fontSize: 12,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFE5E7EB),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF6F61EF),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 filled: true,
//                                 fillColor:
//                                 (_model.ageFocusNode?.hasFocus ?? false)
//                                     ? Color(0x4D9489F5)
//                                     : Colors.white,
//                                 contentPadding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 20, 16, 20),
//                               ),
//                               style: FlutterFlowTheme.of(context)
//                                   .bodyLarge
//                                   .override(
//                                 fontFamily: 'Figtree',
//                                 color: Color(0xFF15161E),
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               cursorColor: Color(0xFF6F61EF),
//                               validator: _model.ageTextControllerValidator
//                                   .asValidator(context),
//                             ),
//                             TextFormField(
//                               controller: _model.dateOfBirthTextController,
//                               focusNode: _model.dateOfBirthFocusNode,
//                               autofocus: true,
//                               textCapitalization: TextCapitalization.words,
//                               obscureText: false,
//                               decoration: InputDecoration(
//                                 labelText: 'Date of Birth*',
//                                 labelStyle: FlutterFlowTheme.of(context)
//                                     .labelLarge
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 hintStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Outfit',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                                 errorStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFFFF5963),
//                                   fontSize: 12,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFE5E7EB),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF6F61EF),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFFF5963),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 filled: true,
//                                 fillColor:
//                                 (_model.dateOfBirthFocusNode?.hasFocus ??
//                                     false)
//                                     ? Color(0x4D9489F5)
//                                     : Colors.white,
//                                 contentPadding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 20, 16, 20),
//                               ),
//                               style: FlutterFlowTheme.of(context)
//                                   .bodyLarge
//                                   .override(
//                                 fontFamily: 'Figtree',
//                                 color: Color(0xFF15161E),
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               cursorColor: Color(0xFF6F61EF),
//                               validator: _model
//                                   .dateOfBirthTextControllerValidator
//                                   .asValidator(context),
//                               inputFormatters: [_model.dateOfBirthMask],
//                             ),
//                             Text(
//                               'Gender',
//                               style: FlutterFlowTheme.of(context)
//                                   .labelMedium
//                                   .override(
//                                 fontFamily: 'Outfit',
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             FlutterFlowChoiceChips(
//                               options: [
//                                 ChipData('Female'),
//                                 ChipData('Male'),
//                                 ChipData('Other')
//                               ],
//                               onChanged: (val) => setState(() =>
//                               _model.choiceChipsValue = val?.firstOrNull),
//                               selectedChipStyle: ChipStyle(
//                                 backgroundColor: Color(0x5A39D2C0),
//                                 textStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFF15161E),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 iconColor: Color(0xFF15161E),
//                                 iconSize: 18,
//                                 elevation: 0,
//                                 borderColor: Color(0xFF39D2C0),
//                                 borderWidth: 2,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               unselectedChipStyle: ChipStyle(
//                                 backgroundColor: Color(0xFFF1F4F8),
//                                 textStyle: FlutterFlowTheme.of(context)
//                                     .bodyMedium
//                                     .override(
//                                   fontFamily: 'Figtree',
//                                   color: Color(0xFF606A85),
//                                   fontSize: 14,
//                                   letterSpacing: 0,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 iconColor: Color(0xFF606A85),
//                                 iconSize: 18,
//                                 elevation: 0,
//                                 borderColor: Color(0xFFE5E7EB),
//                                 borderWidth: 2,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               chipSpacing: 12,
//                               rowSpacing: 12,
//                               multiselect: false,
//                               alignment: WrapAlignment.start,
//                               controller: _model.choiceChipsValueController ??=
//                                   FormFieldController<List<String>>(
//                                     [],
//                                   ),
//
//                             ),
//                           ]
//                               .divide(SizedBox(height: 12))
//                               .addToEnd(SizedBox(height: 32)),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   constraints: BoxConstraints(
//                     maxWidth: 770,
//                   ),
//                   decoration: BoxDecoration(),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
//                     child: FFButtonWidget(
//                       onPressed: () async {
//                         Navigator.of(context).pushNamed('HomescreenWidget');
//                       },
//                       text: 'Submit',
//                       options: FFButtonOptions(
//                         width: double.infinity,
//                         height: 48,
//                         padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         color: Color(0xFFCC5500),
//                         textStyle:
//                         FlutterFlowTheme.of(context).titleSmall.override(
//                           fontFamily: 'Figtree',
//                           color: Colors.white,
//                           fontSize: 16,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.w500,
//                         ),
//                         elevation: 3,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


//bakend code
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntakeFormWidget extends StatefulWidget {
  final String phoneNumber;

  IntakeFormWidget({required this.phoneNumber});

  @override
  _IntakeFormWidgetState createState() => _IntakeFormWidgetState();
}

class _IntakeFormWidgetState extends State<IntakeFormWidget> {
  final _formKey = GlobalKey<FormState>();

  late IntakeFormModel _model;

  @override
  void initState() {
    super.initState();
    _model = context.read<IntakeFormModel>();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      setState(() {
        _model.dateOfBirthTextController?.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Intake Form'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _model.fullNameTextController,
                focusNode: _model.fullNameFocusNode,
                decoration: InputDecoration(labelText: 'Full Name*'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _model.emailIDTextController,
                focusNode: _model.emailIDFocusNode,
                decoration: InputDecoration(labelText: 'Email ID*'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email ID';
                  }
                  final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email ID';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _model.ageTextController,
                focusNode: _model.ageFocusNode,
                decoration: InputDecoration(labelText: 'Age*'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _model.dateOfBirthTextController,
                    focusNode: _model.dateOfBirthFocusNode,
                    decoration: InputDecoration(
                      labelText: 'Date of Birth*',
                      hintText: 'yyyy-MM-dd',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your date of birth';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Gender',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  ChoiceChip(
                    label: Text('Male'),
                    selected: _model.choiceChipsValue == 'Male',
                    onSelected: (selected) {
                      setState(() {
                        _model.choiceChipsValue = selected ? 'Male' : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Female'),
                    selected: _model.choiceChipsValue == 'Female',
                    onSelected: (selected) {
                      setState(() {
                        _model.choiceChipsValue = selected ? 'Female' : null;
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Other'),
                    selected: _model.choiceChipsValue == 'Other',
                    onSelected: (selected) {
                      setState(() {
                        _model.choiceChipsValue = selected ? 'Other' : null;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    final fullName = _model.fullNameTextController?.text;
                    final email = _model.emailIDTextController?.text;
                    final age = int.tryParse(_model.ageTextController?.text ?? '');
                    final dateOfBirth = _model.dateOfBirthTextController?.text;
                    final gender = _model.choiceChipsValue;
                    final phoneNumber = widget.phoneNumber;

                    if (fullName == null || email == null || age == null || dateOfBirth == null || gender == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please fill in all required fields')),
                      );
                      return;
                    }

                    try {
                      final response = await ApiService().completeProfile(
                        fullName: fullName,
                        email: email,
                        age: age,
                        dateOfBirth: dateOfBirth,
                        gender: gender,
                        phoneNumber: phoneNumber,
                      );

                      if (response['status'] == 'success') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Profile completed successfully')),
                        );
                        Navigator.pushNamed(context, 'HomescreenWidget');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Failed to complete profile. Please try again.')),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('An error occurred. Please try again.')),
                      );
                    }
                  }
                },
                child: Text('Complete Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
