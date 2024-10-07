// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import '../models/otpscreenlogin_model.dart';
//
//
//
// class OtpscreenloginWidget extends StatefulWidget {
//   const OtpscreenloginWidget({super.key});
//
//   @override
//   State<OtpscreenloginWidget> createState() => _OtpscreenloginWidgetState();
// }
//
// class _OtpscreenloginWidgetState extends State<OtpscreenloginWidget> {
//   late OtpscreenloginModel _model;
//   late String phoneNumber;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => OtpscreenloginModel());
//
//     _model.textController ??= TextEditingController();
//     _model.textFieldFocusNode ??= FocusNode();
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
//         backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//         appBar: AppBar(
//           backgroundColor: Color(0xFFCC5500),
//           automaticallyImplyLeading: false,
//           title: Align(
//             alignment: AlignmentDirectional(0, 0),
//             child: Text(
//               'dnalyst',
//               style: FlutterFlowTheme.of(context).titleMedium.override(
//                 fontFamily: 'Archivo Black',
//                 color: Color(0xFFFFFFF0),
//                 fontSize: 25,
//                 letterSpacing: 0,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           actions: [],
//           centerTitle: false,
//           toolbarHeight: 200,
//           elevation: 10,
//         ),
//         body: SafeArea(
//           top: true,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Container(
//                     width: 430,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                     ),
//                     child: Opacity(
//                       opacity: 0.9,
//                       child: Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Text(
//                           'Enter OPT received on $phoneNumber',
//                           style:
//                           FlutterFlowTheme.of(context).bodyMedium.override(
//                             fontFamily: 'Montserrat',
//                             fontSize: 18,
//                             letterSpacing: 0,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 430,
//                   height: 78,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Expanded(
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(58, 0, 58, 0),
//                             child: TextFormField(
//                               controller: _model.textController,
//                               focusNode: _model.textFieldFocusNode,
//                               autofocus: true,
//                               obscureText: false,
//                               decoration: InputDecoration(
//                                 labelText: '    Enter the OTP',
//                                 labelStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Readex Pro',
//                                   letterSpacing: 0,
//                                 ),
//                                 hintStyle: FlutterFlowTheme.of(context)
//                                     .labelMedium
//                                     .override(
//                                   fontFamily: 'Readex Pro',
//                                   letterSpacing: 0,
//                                 ),
//                                 enabledBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color:
//                                     FlutterFlowTheme.of(context).alternate,
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 focusedBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFCC5500),
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 errorBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: FlutterFlowTheme.of(context).error,
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 focusedErrorBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: FlutterFlowTheme.of(context).error,
//                                     width: 2,
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                               ),
//                               style: FlutterFlowTheme.of(context)
//                                   .bodyMedium
//                                   .override(
//                                 fontFamily: 'Readex Pro',
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                               ),
//                               textAlign: TextAlign.center,
//                               validator: _model.textControllerValidator
//                                   .asValidator(context),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                     child: FFButtonWidget(
//                       onPressed: () async {
//                         Navigator.of(context).pushNamed('HomescreenWidget');
//                       },
//                       text: 'Verify',
//                       options: FFButtonOptions(
//                         height: 40,
//                         padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                         color: Color(0xFFCC5500),
//                         textStyle:
//                         FlutterFlowTheme.of(context).titleSmall.override(
//                           fontFamily: 'Readex Pro',
//                           color: Color(0xFFFFFFF0),
//                           letterSpacing: 0,
//                         ),
//                         elevation: 3,
//                         borderSide: BorderSide(
//                           color: Colors.transparent,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                         hoverColor: Color(0xFFE2725B),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
//                     child: Text(
//                       'Didnt receive the OTP?',
//                       style: FlutterFlowTheme.of(context).bodyMedium.override(
//                         fontFamily: 'Readex Pro',
//                         letterSpacing: 0,
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


import 'dart:convert';
import 'package:dnalyst/services/sharedprefernce.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/ApiService.dart';
import '../models/otpscreenlogin_model.dart';

class OtpscreenloginWidget extends StatefulWidget {
  const OtpscreenloginWidget({super.key});

  @override
  State<OtpscreenloginWidget> createState() => _OtpscreenloginWidgetState();
}

class _OtpscreenloginWidgetState extends State<OtpscreenloginWidget> {
  late OtpscreenloginModel _model;
  String? phoneNumber; // Nullable phone number

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpscreenloginModel());
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)!.settings.arguments;
      if (args is String) {
        phoneNumber = args;
        setState(() {}); // Update state with the phone number
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _verifyOtp() async {
    final otp = _model.textController?.text.trim();
    if (otp == null || otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter the OTP')),
      );
      return;
    }

    if (phoneNumber == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Phone number not provided')),
      );
      return;
    }

    try {
      final apiService = ApiService();
      final response = await apiService.verifyloginOtp(phoneNumber!, otp);
      if (response['status'] == 'success') {
        print(response);

        String id=response['id'].toString();
        SharedPref().loggIn(id);

        Navigator.of(context).pushNamedAndRemoveUntil('HomescreenWidget',(Route<dynamic> route) => false, );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid OTP')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFCC5500),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'dnalyst',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                fontFamily: 'Archivo Black',
                color: Color(0xFFFFFFF0),
                fontSize: 25,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 200,
          elevation: 10,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      phoneNumber != null ? 'Enter OTP received on $phoneNumber' : 'Loading...',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter the OTP',
                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFCC5500),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.center,
                    validator: _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await _verifyOtp(); // Call the verification method
                    },
                    text: 'Verify',
                    options: FFButtonOptions(
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFCC5500),
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFFFFFF0),
                        letterSpacing: 0,
                      ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      hoverColor: Color(0xFFE2725B),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Didn\'t receive the OTP?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


