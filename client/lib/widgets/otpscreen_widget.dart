//
//
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'package:dnalyst/models/otpscreen_model.dart';
// export 'package:dnalyst/models/otpscreen_model.dart';
//
// class OtpscreenWidget extends StatefulWidget {
//   const OtpscreenWidget({super.key});
//
//   @override
//   State<OtpscreenWidget> createState() => _OtpscreenWidgetState();
// }
//
// class _OtpscreenWidgetState extends State<OtpscreenWidget> {
//   late OtpscreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => OtpscreenModel());
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
//                           'Enter OPT received on +916361886259',
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
//                         Navigator.of(context).pushNamed('IntakeFormWidget');
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

//backend code
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:provider/provider.dart';
import 'package:dnalyst/models/otpscreen_model.dart';
import '../services/ApiService.dart'; // Import your ApiService

class OtpscreenWidget extends StatefulWidget {
  const OtpscreenWidget({super.key});

  @override
  State<OtpscreenWidget> createState() => _OtpscreenWidgetState();
}

class _OtpscreenWidgetState extends State<OtpscreenWidget> {
  late OtpscreenModel _model;
  late String phoneNumber;
  final ApiService _apiService = ApiService();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpscreenModel());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments as String?;
    phoneNumber = args ?? 'Not Provided';
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _verifyOtp() async {
    final otp = _model.textController?.text ?? '';

    if (otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter the OTP')),
      );
      return;
    }

    try {
      final response = await _apiService.verifyOtp(phoneNumber, otp);
      print('Response from server: $response');

      // Check if response is a Map and contains the 'message' key
      final message = response['message'] ?? 'Unknown response';
      if (response['status'] == 'success' && message == 'Account verified successfully.') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
        Navigator.of(context).pushNamed('IntakeFormWidget');
        Navigator.of(context).pushNamed(
          'IntakeFormWidget',
          arguments: phoneNumber, // Pass the phone number directly
        );
        // When navigating to IntakeFormWidget, pass the phoneNumber as an argument
        // Navigator.pushNamed(
        //   context,
        //   'IntakeFormWidget',
        //   arguments: phoneNumber, // Ensure phoneNumber is a String
        // );

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
        } catch (e) {
      print('Error during OTP verification: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to verify OTP')),
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
                    width: 430,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Opacity(
                      opacity: 0.9,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Enter OTP received on $phoneNumber',
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 430,
                  height: 78,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(58, 0, 58, 0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Enter the OTP',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Readex Pro',
                                fontSize: 16,
                                letterSpacing: 0,
                              ),
                              textAlign: TextAlign.center,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: FFButtonWidget(
                      onPressed: _verifyOtp, // Call the _verifyOtp method
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
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Text(
                      'Didn\'t receive the OTP?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                      ),
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


