//
//
// import 'package:flutter/material.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import '../services/ApiService.dart';
// import 'package:dnalyst/models/loginscreen_model.dart';
// export 'package:dnalyst/models/loginscreen_model.dart';
//
// import 'package:dio/dio.dart';
//
// class LoginscreenWidget extends StatefulWidget {
//   const LoginscreenWidget({super.key});
//
//   @override
//   State<LoginscreenWidget> createState() => _LoginscreenWidgetState();
// }
//
// class _LoginscreenWidgetState extends State<LoginscreenWidget> {
//   late LoginscreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => LoginscreenModel());
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
//   Future<void> _login() async {
//     final phoneNumber = _model.textController?.text.trim();
//     final countryCode = _model.dropDownValue ?? '+91'; // Default to '+91' if no country code selected
//
//     if (phoneNumber == null || phoneNumber.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter your phone number')),
//       );
//       return;
//     }
//
//     final fullPhoneNumber = '$countryCode$phoneNumber'; // Concatenate country code and phone number
//
//     try {
//       final apiService = ApiService();
//       final response = await apiService.requestOtp(fullPhoneNumber);
//       if (response['status'] == 'success') {
//         Navigator.of(context).pushNamed(
//           'OtpscreenloginWidget',
//           arguments: fullPhoneNumber, // Pass the full phone number with country code
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to send OTP')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: $e')),
//       );
//     }
//   }
//
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
//                 Container(
//                   width: 1530,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Opacity(
//                     opacity: 0.9,
//                     child: Align(
//                       alignment: AlignmentDirectional(0, 0),
//                       child: Text(
//                         'Login to your account',
//                         style: FlutterFlowTheme.of(context).bodyMedium.override(
//                           fontFamily: 'Montserrat',
//                           fontSize: 20,
//                           letterSpacing: 0,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Container(
//                     width: 1530,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                     ),
//                     child: Align(
//                       alignment: AlignmentDirectional(0, 0),
//                       child: Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             FlutterFlowDropDown(
//                               options: ['+83', '+78', '+01', '+34', '+91'],
//                               onChanged: (val) =>
//                                   setState(() => _model.dropDownValue = val),
//                               width: 100,
//                               height: 56,
//                               textStyle: FlutterFlowTheme.of(context)
//                                   .bodyMedium
//                                   .override(
//                                 fontFamily: 'Readex Pro',
//                                 fontSize: 16,
//                                 letterSpacing: 0,
//                               ),
//                               hintText: '+91',
//                               icon: Icon(
//                                 Icons.keyboard_arrow_down_rounded,
//                                 color: FlutterFlowTheme.of(context).secondaryText,
//                                 size: 24,
//                               ),
//                               fillColor: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                               elevation: 2,
//                               borderColor: FlutterFlowTheme.of(context).alternate,
//                               borderWidth: 2,
//                               borderRadius: 8,
//                               margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
//                               hidesUnderline: true,
//                             ),
//                             Expanded(
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
//                                 child: Container(
//                                   width: 50,
//                                   child: TextFormField(
//                                     controller: _model.textController,
//                                     focusNode: _model.textFieldFocusNode,
//                                     autofocus: true,
//                                     obscureText: false,
//                                     decoration: InputDecoration(
//                                       labelText: '  Enter your phone number',
//                                       labelStyle: FlutterFlowTheme.of(context)
//                                           .labelMedium
//                                           .override(
//                                         fontFamily: 'Readex Pro',
//                                         fontSize: 14,
//                                         letterSpacing: 0,
//                                       ),
//                                       hintStyle: FlutterFlowTheme.of(context)
//                                           .labelMedium
//                                           .override(
//                                         fontFamily: 'Readex Pro',
//                                         letterSpacing: 0,
//                                       ),
//                                       enabledBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                           color: Colors.white,
//                                           width: 2,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       focusedBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                           color: Color(0xFFCC5500),
//                                           width: 2,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       errorBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                           color: FlutterFlowTheme.of(context).error,
//                                           width: 2,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       focusedErrorBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                           color: FlutterFlowTheme.of(context).error,
//                                           width: 2,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyMedium
//                                         .override(
//                                       fontFamily: 'Readex Pro',
//                                       fontSize: 16,
//                                       letterSpacing: 0,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                     validator: _model.textControllerValidator
//                                         .asValidator(context),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 1530,
//                   height: 58,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                     child: Text(
//                       'By signing in, I accept the Terms & Conditions',
//                       textAlign: TextAlign.center,
//                       style: FlutterFlowTheme.of(context).bodyMedium.override(
//                         fontFamily: 'Outfit',
//                         fontSize: 14,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
//                   child: FFButtonWidget(
//                     onPressed: () async {
//                       // Call the login function
//                        Navigator.of(context).pushNamed('OtpscreenWidget');
//                     },
//                     text: 'Login',
//                     options: FFButtonOptions(
//                       height: 40,
//                       padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                       iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                       color: Color(0xFFCC5500),
//                       textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                         fontFamily: 'Readex Pro',
//                         color: Colors.white,
//                         letterSpacing: 0,
//                       ),
//                       elevation: 3,
//                       borderSide: BorderSide(
//                         color: Colors.transparent,
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.circular(8),
//                       hoverColor: Color(0xFFE2725B),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 15),
//                   child: InkWell(
//                     splashColor: Colors.transparent,
//                     focusColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onTap: () async {
//                       Navigator.of(context).pushNamed('CreateaccountscreenWidget');
//                     },
//                     child: Text(
//                       'New user?  Register',
//                       style: FlutterFlowTheme.of(context).bodyMedium.override(
//                         fontFamily: 'Readex Pro',
//                         letterSpacing: 0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 1530,
//                   height: 57,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Align(
//                     alignment: AlignmentDirectional(0, 0),
//                     child: Text(
//                       'or connect with',
//                       style: FlutterFlowTheme.of(context).bodyMedium.override(
//                         fontFamily: 'Readex Pro',
//                         color: FlutterFlowTheme.of(context).secondaryText,
//                         letterSpacing: 0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 1530,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//                           child: FlutterFlowIconButton(
//                             borderColor:
//                             FlutterFlowTheme.of(context).primaryText,
//                             borderRadius: 20,
//                             borderWidth: 1,
//                             buttonSize: 50,
//                             fillColor: Color(0xFFE3E3E3),
//                             icon: FaIcon(
//                               FontAwesomeIcons.google,
//                               color: FlutterFlowTheme.of(context).primaryText,
//                               size: 22,
//                             ),
//                             onPressed: () async {
//                               Navigator.of(context).pushNamed('CreateaccountscreenWidget');
//                             },
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                         child: FlutterFlowIconButton(
//                           borderColor: FlutterFlowTheme.of(context).primaryText,
//                           borderRadius: 20,
//                           borderWidth: 1,
//                           buttonSize: 50,
//                           fillColor: Color(0xFFE3E3E3),
//                           icon: Icon(
//                             Icons.facebook,
//                             color: FlutterFlowTheme.of(context).primaryText,
//                             size: 32,
//                           ),
//                           onPressed: () async {
//                             Navigator.of(context).pushNamed('CreateaccountscreenWidget');
//                           },
//                         ),
//                       ),
//                     ],
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
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:provider/provider.dart';
import '../models/loginscreen_model.dart';
import '../services/ApiService.dart';

class LoginscreenWidget extends StatefulWidget {
  const LoginscreenWidget({super.key});

  @override
  State<LoginscreenWidget> createState() => _LoginscreenWidgetState();
}

class _LoginscreenWidgetState extends State<LoginscreenWidget> {
  late LoginscreenModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginscreenModel());
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final phoneNumber = _model.textController?.text.trim();
    final countryCode = _model.dropDownValue ?? '+91'; // Default to '+91' if no country code selected

    if (phoneNumber == null || phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your phone number')),
      );
      return;
    }

    final fullPhoneNumber = '$countryCode$phoneNumber'; // Concatenate country code and phone number

    try {
      final apiService = ApiService();
      final response = await apiService.requestOtp(fullPhoneNumber);
      if (response['status'] == 'success') {
        Navigator.of(context).pushNamed(
          'OtpscreenloginWidget',
          arguments: fullPhoneNumber, // Pass the full phone number with country code
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to send OTP')),
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
    fontSize: 25,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    ),
    ),
    ),
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
    Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).secondaryBackground,
    ),
    child: Opacity(
    opacity: 0.9,
    child: Align(
    alignment: AlignmentDirectional(0, 0),
    child: Text(
    'Login to your account',
    style: FlutterFlowTheme.of(context).bodyMedium.override(
    fontFamily: 'Montserrat',
    fontSize: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    ),
    ),
    ),
    ),
    ),
    Align(
    alignment: AlignmentDirectional(0, 0),
    child: Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).secondaryBackground,
    ),
    child: Align(
    alignment: AlignmentDirectional(0, 0),
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    FlutterFlowDropDown(
    options: ['+83', '+78', '+01', '+34', '+91'],
    onChanged: (val) =>
    setState(() => _model.dropDownValue = val),
    width: 100,
    height: 56,
    textStyle: FlutterFlowTheme.of(context)
        .bodyMedium
        .override(
    fontFamily: 'Readex Pro',
    fontSize: 16,
    letterSpacing: 0,
    ),
    hintText: '+91',
    icon: Icon(
    Icons.keyboard_arrow_down_rounded,
    color: FlutterFlowTheme.of(context).secondaryText,
    size: 24,
    ),
    fillColor: FlutterFlowTheme.of(context)
        .secondaryBackground,
    elevation: 2,
    borderColor: FlutterFlowTheme.of(context).alternate,
    borderWidth: 2,
    borderRadius: 8,
    margin: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
    hidesUnderline: true,
    ),
    Expanded(
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 40, 0),
    child: Container(
    width: 50,
    child: TextFormField(
    controller: _model.textController,
    focusNode: _model.textFieldFocusNode,
    autofocus: true,
    obscureText: false,
    decoration: InputDecoration(
    labelText: '  Enter your phone number',
    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
    fontFamily: 'Readex Pro',
    fontSize: 14,
    letterSpacing: 0,
    ),
    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
    fontFamily: 'Readex Pro',
    letterSpacing: 0,
    ),
    enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white,
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
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    Align(
    alignment: AlignmentDirectional(0, 0),
    child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
    child: Container(
    width: 350,
    height: 30,
    decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).secondaryBackground,
    ),
    ),
    ),
    ),
    Align(
    alignment: AlignmentDirectional(0, 0),
    child: Container(
    width: 340,
    height: 100,
    decoration: BoxDecoration(
    color: FlutterFlowTheme.of(context).secondaryBackground,
    ),
    child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
    FFButtonWidget(
    onPressed: () {
    _login(); // Call the login method
    },
    text: 'Get OTP',
    options: FFButtonOptions(
    width: 180,
    height: 45,
    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
    color: Color(0xFFCC5500),
    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
    fontFamily: 'Readex Pro',
    color: Colors.white,
    ),
    elevation: 2,
    borderSide: BorderSide(
    color: Colors.transparent,
    width: 1,
    ),
      borderRadius: BorderRadius.circular(8), // Ensure this usage
    ),
    ),
    ],
    ),
    ),
    ),
      Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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


