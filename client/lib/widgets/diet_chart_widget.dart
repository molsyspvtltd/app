// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:provider/provider.dart';
//
// import 'package:dnalyst/models/diet_chart_model.dart';
//
// import '../services/DietChart.dart';
// export 'package:dnalyst/models/diet_chart_model.dart';
//
// class DietChartWidget extends StatefulWidget {
//   const DietChartWidget({super.key});
//
//   @override
//   State<DietChartWidget> createState() => _DietChartWidgetState();
// }
//
// class _DietChartWidgetState extends State<DietChartWidget>
//     with TickerProviderStateMixin {
//   late DietChartModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   final animationsMap = <String, AnimationInfo>{};
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => DietChartModel());
//
//     animationsMap.addAll({
//       'containerOnPageLoadAnimation1': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation2': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation3': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation4': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation5': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation6': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//     });
//     setupAnimations(
//       animationsMap.values.where((anim) =>
//       anim.trigger == AnimationTrigger.onActionTrigger ||
//           !anim.applyInitialState),
//       this,
//     );
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
//         appBar: AppBar(
//           backgroundColor: Color(0xFFCC5500),
//           automaticallyImplyLeading: false,
//           leading: FlutterFlowIconButton(
//             borderColor: Colors.transparent,
//             borderRadius: 30,
//             buttonSize: 46,
//             icon: Icon(
//               Icons.arrow_back_rounded,
//               color: Colors.white,
//               size: 30,
//             ),
//             onPressed: () async {
//               Navigator.of(context).pop();
//             },
//           ),
//           title: Text(
//             'Diet Chart',
//             style: FlutterFlowTheme.of(context).headlineMedium.override(
//               fontFamily: 'Outfit',
//               color: Colors.white,
//               fontSize: 24,
//               letterSpacing: 0,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           actions: [],
//           centerTitle: false,
//           elevation: 0,
//         ),
//         body: SafeArea(
//           top: true,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x2D101213),
//                         offset: Offset(
//                           0.0,
//                           2,
//                         ),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(20, 12, 16, 12),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 6, 16, 6),
//                               child: InkWell(
//                                 splashColor: Colors.transparent,
//                                 focusColor: Colors.transparent,
//                                 hoverColor: Colors.transparent,
//                                 highlightColor: Colors.transparent,
//                                 onTap: () async {
//                                   Navigator.of(context).pushNamed('profilescreen');
//                                 },
//                                 child: Container(
//                                   width: 53,
//                                   height: 53,
//                                   decoration: BoxDecoration(
//                                     color: FlutterFlowTheme.of(context)
//                                         .primaryBackground,
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                       color: Color(0xB4CC5500),
//                                       width: 2,
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(2),
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(50),
//                                       child: Image.asset(
//                                         'assets/images/profilescreen.jpeg',
//                                         width: 300,
//                                         height: 200,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Text(
//                               'Anu, ',
//                               style: FlutterFlowTheme.of(context)
//                                   .bodyMedium
//                                   .override(
//                                 fontFamily: 'Readex Pro',
//                                 color: FlutterFlowTheme.of(context)
//                                     .primaryText,
//                                 fontSize: 25,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       LinearPercentIndicator(
//                         percent: 0.15,
//                         width: MediaQuery.sizeOf(context).width,
//                         lineHeight: 12,
//                         animation: true,
//                         animateFromLastPercent: true,
//                         progressColor: Color(0xFFCC5500),
//                         backgroundColor: Color(0xFFD2D2D2),
//                         barRadius: Radius.circular(0),
//                         padding: EdgeInsets.zero,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x2D101213),
//                         offset: Offset(
//                           0.0,
//                           2,
//                         ),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
//                         child: ListView(
//                           padding: EdgeInsets.zero,
//                           primary: false,
//                           shrinkWrap: true,
//                           scrollDirection: Axis.vertical,
//                           children: [
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                               child: Container(
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x25090F13),
//                                       offset: Offset(
//                                         0.0,
//                                         2,
//                                       ),
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       12, 8, 12, 12),
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.max,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: [
//                                       Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             item.month,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .headlineSmall
//                                                 .override(
//                                               fontFamily: 'Outfit',
//                                               color: Color(0xFF14181B),
//                                               letterSpacing: 0,
//                                             ),
//                                           ),
//                                           Text(
//                                             item.challenge,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                               fontFamily: 'Readex Pro',
//                                               color: Color(0xFF57636C),
//                                               letterSpacing: 0,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       Divider(
//                                         height: 24,
//                                         thickness: 1,
//                                         color: Color(0xFFF1F4F8),
//                                       ),
//                                       Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'Due',
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                               fontFamily:
//                                               'Plus Jakarta Sans',
//                                               color: Color(0xFF14181B),
//                                               fontSize: 14,
//                                               letterSpacing: 0,
//                                               fontWeight: FontWeight.normal,
//                                             ),
//                                           ),
//                                           Expanded(
//                                             child: Padding(
//                                               padding: EdgeInsetsDirectional
//                                                   .fromSTEB(8, 0, 0, 0),
//                                               child: Text(
//                                                 item.dueDate,
//                                                 style:
//                                                 FlutterFlowTheme.of(context)
//                                                     .bodyMedium
//                                                     .override(
//                                                   fontFamily:
//                                                   'Plus Jakarta Sans',
//                                                   color:
//                                                   Color(0xFF4B39EF),
//                                                   fontSize: 14,
//                                                   letterSpacing: 0,
//                                                   fontWeight:
//                                                   FontWeight.normal,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: 100,
//                                             height: 32,
//                                             decoration: BoxDecoration(
//                                               color:
//                                               FlutterFlowTheme.of(context)
//                                                   .secondary,
//                                               borderRadius:
//                                               BorderRadius.circular(32),
//                                             ),
//                                             alignment:
//                                             AlignmentDirectional(0, 0),
//                                             child: Text(
//                                               item.status,
//                                               style: FlutterFlowTheme.of(
//                                                   context)
//                                                   .bodyMedium
//                                                   .override(
//                                                 fontFamily:
//                                                 'Plus Jakarta Sans',
//                                                 color: FlutterFlowTheme.of(
//                                                     context)
//                                                     .primaryText,
//                                                 fontSize: 14,
//                                                 letterSpacing: 0,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       Align(
//                                         alignment: AlignmentDirectional(0, 0),
//                                         child: Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               0, 15, 0, 15),
//                                           child: FlutterFlowDropDown(
//                                             options: [
//                                               'Week 1',
//                                               'Week 2',
//                                               'Week 3',
//                                               'Week 4'
//                                             ],
//                                             onChanged: (val) => setState(() =>
//                                             _model.dropDownValue1 = val),
//                                             width: 325,
//                                             height: 56,
//                                             textStyle:
//                                             FlutterFlowTheme.of(context)
//                                                 .bodyMedium
//                                                 .override(
//                                               fontFamily: 'Readex Pro',
//                                               letterSpacing: 0,
//                                             ),
//                                             hintText: 'Please select...',
//                                             icon: Icon(
//                                               Icons.keyboard_arrow_down_rounded,
//                                               color:
//                                               FlutterFlowTheme.of(context)
//                                                   .secondaryText,
//                                               size: 24,
//                                             ),
//                                             fillColor:
//                                             FlutterFlowTheme.of(context)
//                                                 .secondaryBackground,
//                                             elevation: 2,
//                                             borderColor:
//                                             FlutterFlowTheme.of(context)
//                                                 .alternate,
//                                             borderWidth: 2,
//                                             borderRadius: 8,
//                                             margin:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 16, 4, 16, 4),
//                                             hidesUnderline: true,
//
//                                           ),
//                                         ),
//                                       ),
//                                       Align(
//                                         alignment: AlignmentDirectional(0, 0),
//                                         child: FFButtonWidget(
//                                           onPressed: () async {
//                                             Navigator.of(context).pushNamed('FoodDietWidget');
//                                           },
//                                           text: 'Proceed',
//                                           options: FFButtonOptions(
//                                             height: 40,
//                                             padding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 24, 0, 24, 0),
//                                             iconPadding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 0, 0, 0, 0),
//                                             color: Color(0xFF249656),
//                                             textStyle:
//                                             FlutterFlowTheme.of(context)
//                                                 .titleSmall
//                                                 .override(
//                                               fontFamily: 'Readex Pro',
//                                               color: Colors.white,
//                                               letterSpacing: 0,
//                                             ),
//                                             elevation: 3,
//                                             borderSide: BorderSide(
//                                               color: Colors.transparent,
//                                               width: 1,
//                                             ),
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ).animateOnPageLoad(animationsMap[
//                               'containerOnPageLoadAnimation1']!),
//                             ),
//
//                           ],
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

// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:provider/provider.dart';
//
// import 'package:dnalyst/models/diet_chart_model.dart';
//
// import '../services/DietChart.dart';
// export 'package:dnalyst/models/diet_chart_model.dart';
//
// class DietChartWidget extends StatefulWidget {
//   const DietChartWidget({super.key});
//
//   @override
//   State<DietChartWidget> createState() => _DietChartWidgetState();
// }
//
// class _DietChartWidgetState extends State<DietChartWidget>
//     with TickerProviderStateMixin {
//   late DietChartModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   final animationsMap = <String, AnimationInfo>{};
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => DietChartModel());
//
//     animationsMap.addAll({
//       'containerOnPageLoadAnimation1': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation2': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation3': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation4': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation5': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//       'containerOnPageLoadAnimation6': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effects:  [
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           MoveEffect(
//             curve: Curves.easeInOut,
//             delay: 0.0.ms,
//             duration: 600.0.ms,
//             begin: Offset(0.0, 30.0),
//             end: Offset(0.0, 0.0),
//           ),
//         ],
//       ),
//     });
//     setupAnimations(
//       animationsMap.values.where((anim) =>
//       anim.trigger == AnimationTrigger.onActionTrigger ||
//           !anim.applyInitialState),
//       this,
//     );
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
//         backgroundColor: const Color(0xFFF1F4F8),
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFCC5500),
//           automaticallyImplyLeading: false,
//           leading: FlutterFlowIconButton(
//             borderColor: Colors.transparent,
//             borderRadius: 30,
//             buttonSize: 46,
//             icon: const Icon(
//               Icons.arrow_back_rounded,
//               color: Colors.white,
//               size: 30,
//             ),
//             onPressed: () async {
//               Navigator.of(context).pop();
//             },
//           ),
//           title: Text(
//             'Diet Chart',
//             style: FlutterFlowTheme.of(context).headlineMedium.override(
//               fontFamily: 'Outfit',
//               color: Colors.white,
//               fontSize: 24,
//               letterSpacing: 0,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           actions: const [],
//           centerTitle: false,
//           elevation: 0,
//         ),
//         body: SafeArea(
//           top: true,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: const [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x2D101213),
//                         offset: Offset(
//                           0.0,
//                           2,
//                         ),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 16, 12),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(0, 6, 16, 6),
//                               child: InkWell(
//                                 splashColor: Colors.transparent,
//                                 focusColor: Colors.transparent,
//                                 hoverColor: Colors.transparent,
//                                 highlightColor: Colors.transparent,
//
//                                 child: CircularPercentIndicator(
//                                   percent: 0.3,
//                                   radius: 45,
//                                   lineWidth: 12,
//                                   animation: true,
//                                   progressColor: const Color(0xFFCC5500),
//                                   backgroundColor: const Color(0xFFF1F4F8),
//                                   center: Text(
//                                     '30%',
//                                     style: FlutterFlowTheme.of(context)
//                                         .headlineSmall
//                                         .override(
//                                       fontFamily: 'Outfit',
//                                       color: const Color(0xFFCC5500),
//                                       fontSize: 24,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         'Clean Eating Challenge',
//                                         style: FlutterFlowTheme.of(context)
//                                             .headlineSmall
//                                             .override(
//                                           fontFamily: 'Outfit',
//                                           color: const Color(0xFF101213),
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       Icon(
//                                         Icons.chevron_right_rounded,
//                                         color: const Color(0xFF57636C),
//                                         size: 24,
//                                       ),
//                                     ],
//                                   ),
//                                   Padding(
//                                     padding:
//                                     const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                                           child: Icon(
//                                             Icons.access_time_rounded,
//                                             color: const Color(0xFF57636C),
//                                             size: 20,
//                                           ),
//                                         ),
//                                         Text(
//                                           'Due Tuesday, 10:00am',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyMedium
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color: const Color(0xFF57636C),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: dietCharts.map((chart) {
//                       return Padding(
//                         padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
//                         child: Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             boxShadow: const [
//                               BoxShadow(
//                                 blurRadius: 4,
//                                 color: Color(0x230F1113),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
//                             child: InkWell(
//                               splashColor: Colors.transparent,
//                               focusColor: Colors.transparent,
//                               hoverColor: Colors.transparent,
//                               highlightColor: Colors.transparent,
//                               onTap: () {
//                                 // Handle tap event
//                               },
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           chart.month,
//                                           style: FlutterFlowTheme.of(context)
//                                               .headlineSmall
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color: const Color(0xFF101213),
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
//                                           child: Text(
//                                             chart.challengeName,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodySmall
//                                                 .override(
//                                               fontFamily: 'Outfit',
//                                               color: const Color(0xFF57636C),
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.normal,
//                                             ),
//                                           ),
//                                         ),
//                                         Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                                               child: Icon(
//                                                 Icons.access_time_rounded,
//                                                 color: const Color(0xFF57636C),
//                                                 size: 20,
//                                               ),
//                                             ),
//                                             Text(
//                                               chart.dueDate,
//                                               style: FlutterFlowTheme.of(context)
//                                                   .bodySmall
//                                                   .override(
//                                                 fontFamily: 'Outfit',
//                                                 color: const Color(0xFF57636C),
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.normal,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Icon(
//                                     Icons.lock_rounded,
//                                     color: const Color(0xFF57636C),
//                                     size: 20,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
//                     }).toList(),
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
//


import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/diet_chart_model.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DietChartWidget extends StatefulWidget {
  const DietChartWidget({super.key});

  @override
  State<DietChartWidget> createState() => _DietChartWidgetState();
}

class _DietChartWidgetState extends State<DietChartWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFFCC5500),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Diet Chart',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: const Color(0x2D101213),
                        offset: Offset(0.0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 12, 16, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 6, 16, 6),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('profilescreen');
                                },
                                child: Container(
                                  width: 53,
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xB4CC5500),
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/profilescreen.jpeg',
                                        width: 300,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Anu, ',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF14181B),
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      LinearPercentIndicator(
                        percent: 0.15,
                        width: MediaQuery.of(context).size.width,
                        lineHeight: 12,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: const Color(0xFFCC5500),
                        backgroundColor: const Color(0xFFD2D2D2),
                        barRadius: const Radius.circular(0),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: const Color(0x2D101213),
                        offset: Offset(0.0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: dietCharts.length,
                      itemBuilder: (context, index) {
                        final item = dietCharts[index];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 0, 0, 12),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: const Color(0x25090F13),
                                  offset: Offset(0.0, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 8, 12, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.month,
                                    style: const TextStyle(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    item.challengeName,
                                    style: const TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF57636C),
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Divider(
                                    height: 24,
                                    thickness: 1,
                                    color: Color(0xFFF1F4F8),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Due',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF14181B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          item.dueDate,
                                          style: const TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF4B39EF),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: item.status == 'In Progress'
                                              ? const Color(0xFF249656)
                                              : const Color(0xFFD2D2D2),
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          item.status,
                                          style: const TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Center(
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Color(0xFFB0BEC5),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      value: 'Week 1',
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Week 1',
                                          child: Text('Week 1'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Week 2',
                                          child: Text('Week 2'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Week 3',
                                          child: Text('Week 3'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Week 4',
                                          child: Text('Week 4'),
                                        ),
                                      ],
                                      onChanged: (val) {
                                        setState(() {
                                          // Handle the dropdown value change here
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xFFB0BEC5),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('FoodDiet');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF249656),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                      ),
                                      child: const Text(
                                        'Proceed',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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



class DietChart {
  final String month;
  final String challengeName;
  final String dueDate;
  final String status;

  DietChart({
    required this.month,
    required this.challengeName,
    required this.dueDate,
    required this.status,
  });
}

List<DietChart> dietCharts = [
  DietChart(
    month: 'Month 1',
    challengeName: 'Clean Eating Challenge',
    dueDate: 'Tuesday, 10:00am',
    status: 'In Progress',
  ),
  DietChart(
    month: 'Month 2',
    challengeName: 'Plant-Based Power',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 3',
    challengeName: 'Paleo Diet Plan',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 4',
    challengeName: 'Intermittent Fasting Plan',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 5',
    challengeName: 'Keto Kickstart',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
  DietChart(
    month: 'Month 6',
    challengeName: 'Whole 30 Reset',
    dueDate: 'Tuesday, 10:00am',
    status: 'Locked',
  ),
];
