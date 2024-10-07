// import 'package:flutterflow_ui/flutterflow_ui.dart';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'package:dnalyst/models/profilecreation_model.dart';
// export 'package:dnalyst/models/profilecreation_model.dart';
//
// class ProfilecreationWidget extends StatefulWidget {
//   const ProfilecreationWidget({super.key});
//
//   @override
//   State<ProfilecreationWidget> createState() => _ProfilecreationWidgetState();
// }
//
// class _ProfilecreationWidgetState extends State<ProfilecreationWidget> {
//   late ProfilecreationModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ProfilecreationModel());
//
//     _model.yourNameTextController ??= TextEditingController();
//     _model.yourNameFocusNode ??= FocusNode();
//
//     _model.cityTextController ??= TextEditingController();
//     _model.cityFocusNode ??= FocusNode();
//
//     _model.myBioTextController ??= TextEditingController();
//     _model.myBioFocusNode ??= FocusNode();
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
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF140325),
//         automaticallyImplyLeading: false,
//         leading: FlutterFlowIconButton(
//           borderColor: Colors.transparent,
//           borderRadius: 30,
//           borderWidth: 1,
//           buttonSize: 60,
//           icon: Icon(
//             Icons.arrow_back_rounded,
//             color: Colors.white,
//             size: 30,
//           ),
//           onPressed: () async {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
//           child: Text(
//             'Create your Profile',
//             style: FlutterFlowTheme.of(context).headlineMedium.override(
//               fontFamily: 'Outfit',
//               color: FlutterFlowTheme.of(context).primaryBackground,
//               fontSize: 22,
//               letterSpacing: 0,
//             ),
//           ),
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       body: SafeArea(
//         top: true,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     splashColor: Colors.transparent,
//                     focusColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onTap: () async {
//                       final selectedMedia =
//                       await selectMediaWithSourceBottomSheet(
//                         context: context,
//                         imageQuality: 80,
//                         allowPhoto: true,
//                         backgroundColor:
//                         FlutterFlowTheme.of(context).primaryBackground,
//                         textColor: FlutterFlowTheme.of(context).primaryText,
//                         pickerFontFamily: 'Outfit',
//                       );
//                       if (selectedMedia != null &&
//                           selectedMedia.every((m) =>
//                               validateFileFormat(m.storagePath, context))) {
//                         setState(() => _model.isDataUploading = true);
//                         var selectedUploadedFiles = <FFUploadedFile>[];
//
//                         var downloadUrls = <String>[];
//                         try {
//                           showUploadMessage(
//                             context,
//                             'Uploading file...',
//                             showLoading: true,
//                           );
//                           selectedUploadedFiles = selectedMedia
//                               .map((m) => FFUploadedFile(
//                             name: m.storagePath.split('/').last,
//                             bytes: m.bytes,
//                             height: m.dimensions?.height,
//                             width: m.dimensions?.width,
//                             blurHash: m.blurHash,
//                           ))
//                               .toList();
//
//                           downloadUrls = (await Future.wait(
//                             selectedMedia.map(
//                                   (m) async =>
//                               await uploadData(m.storagePath, m.bytes),
//                             ),
//                           ))
//                               .where((u) => u != null)
//                               .map((u) => u!)
//                               .toList();
//                         } finally {
//                           ScaffoldMessenger.of(context).hideCurrentSnackBar();
//                           _model.isDataUploading = false;
//                         }
//                         if (selectedUploadedFiles.length ==
//                             selectedMedia.length &&
//                             downloadUrls.length == selectedMedia.length) {
//                           setState(() {
//                             _model.uploadedLocalFile =
//                                 selectedUploadedFiles.first;
//                             _model.uploadedFileUrl = downloadUrls.first;
//                           });
//                           showUploadMessage(context, 'Success!');
//                         } else {
//                           setState(() {});
//                           showUploadMessage(context, 'Failed to upload data');
//                           return;
//                         }
//                       }
//                     },
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: FlutterFlowTheme.of(context).alternate,
//                         shape: BoxShape.circle,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(2),
//                         child: Container(
//                           width: 90,
//                           height: 90,
//                           clipBehavior: Clip.antiAlias,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                           ),
//                           child: Image.asset(
//                             'assets/images/profilescreen.jpeg',
//                             fit: BoxFit.fitWidth,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
//               child: TextFormField(
//                 controller: _model.yourNameTextController,
//                 focusNode: _model.yourNameFocusNode,
//                 textCapitalization: TextCapitalization.words,
//                 obscureText: false,
//                 decoration: InputDecoration(
//                   labelText: 'Your Name',
//                   labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).alternate,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).primary,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   filled: true,
//                   fillColor: FlutterFlowTheme.of(context).secondaryBackground,
//                   contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
//                 ),
//                 style: FlutterFlowTheme.of(context).bodyMedium.override(
//                   fontFamily: 'Readex Pro',
//                   letterSpacing: 0,
//                 ),
//                 validator:
//                 _model.yourNameTextControllerValidator.asValidator(context),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
//               child: TextFormField(
//                 controller: _model.cityTextController,
//                 focusNode: _model.cityFocusNode,
//                 textCapitalization: TextCapitalization.words,
//                 obscureText: false,
//                 decoration: InputDecoration(
//                   labelText: 'Your City',
//                   labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).alternate,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).primary,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   filled: true,
//                   fillColor: FlutterFlowTheme.of(context).secondaryBackground,
//                   contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
//                 ),
//                 style: FlutterFlowTheme.of(context).bodyMedium.override(
//                   fontFamily: 'Readex Pro',
//                   letterSpacing: 0,
//                 ),
//                 validator:
//                 _model.cityTextControllerValidator.asValidator(context),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
//               child: FlutterFlowDropDown<String>(
//                 controller: _model.stateValueController ??=
//                     FormFieldController<String>(
//                       _model.stateValue ??= 'State',
//                     ),
//                 options: [
//                   'State',
//                   'Alabama',
//                   'Alaska',
//                   'Arizona',
//                   'Arkansas',
//                   'California',
//                   'Colorado',
//                   'Connecticut',
//                   'Delaware',
//                   'Florida',
//                   'Georgia',
//                   'Hawaii',
//                   'Idaho',
//                   'Illinoi',
//                   'Indiana',
//                   'Iowa',
//                   'Kansas',
//                   'Kentucky',
//                   'Louisiana',
//                   'Maine',
//                   'Maryland',
//                   'Massachusetts',
//                   'Michigan',
//                   'Minnesota',
//                   'Mississippi',
//                   'Missouri',
//                   'Monta',
//                   'Nebraska',
//                   'Nevada',
//                   'New Hampshire',
//                   'New Jersey',
//                   'New Mexico',
//                   'New York',
//                   'North Carolina',
//                   'North Dak',
//                   'Ohio',
//                   'Oklahoma',
//                   'Oregon',
//                   'Pennsylvani',
//                   'Rhode Island',
//                   'South Caroli',
//                   'South Dakota',
//                   'Tennessee',
//                   'Texas',
//                   'Utah',
//                   'Vermont',
//                   'Virginia',
//                   'Washingto',
//                   'West Virginia',
//                   'Wisconsin',
//                   'Wyoming'
//                 ],
//                 onChanged: (val) => setState(() => _model.stateValue = val),
//                 width: double.infinity,
//                 height: 56,
//                 textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                   fontFamily: 'Readex Pro',
//                   letterSpacing: 0,
//                 ),
//                 hintText: 'Select State',
//                 icon: Icon(
//                   Icons.keyboard_arrow_down_rounded,
//                   color: FlutterFlowTheme.of(context).secondaryText,
//                   size: 15,
//                 ),
//                 fillColor: FlutterFlowTheme.of(context).secondaryBackground,
//                 elevation: 2,
//                 borderColor: FlutterFlowTheme.of(context).alternate,
//                 borderWidth: 2,
//                 borderRadius: 8,
//                 margin: EdgeInsetsDirectional.fromSTEB(20, 4, 12, 4),
//                 hidesUnderline: true,
//                 isSearchable: false,
//                 isMultiSelect: false,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
//               child: TextFormField(
//                 controller: _model.myBioTextController,
//                 focusNode: _model.myBioFocusNode,
//                 textCapitalization: TextCapitalization.sentences,
//                 obscureText: false,
//                 decoration: InputDecoration(
//                   labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   hintText: 'Your bio',
//                   hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                     fontFamily: 'Readex Pro',
//                     letterSpacing: 0,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).alternate,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).primary,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: FlutterFlowTheme.of(context).error,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   filled: true,
//                   fillColor: FlutterFlowTheme.of(context).secondaryBackground,
//                   contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
//                 ),
//                 style: FlutterFlowTheme.of(context).bodyMedium.override(
//                   fontFamily: 'Readex Pro',
//                   letterSpacing: 0,
//                 ),
//                 textAlign: TextAlign.start,
//                 maxLines: 3,
//                 validator:
//                 _model.myBioTextControllerValidator.asValidator(context),
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional(0, 0.05),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                 child: FFButtonWidget(
//                   onPressed: () {
//                     print('Button pressed ...');
//                   },
//                   text: 'Save Changes',
//                   options: FFButtonOptions(
//                     width: 270,
//                     height: 50,
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                     iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                     color: Color(0xFF140325),
//                     textStyle:
//                     FlutterFlowTheme.of(context).titleMedium.override(
//                       fontFamily: 'Readex Pro',
//                       color: Colors.white,
//                       letterSpacing: 0,
//                     ),
//                     elevation: 2,
//                     borderSide: BorderSide(
//                       color: Colors.transparent,
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
