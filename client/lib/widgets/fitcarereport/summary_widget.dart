import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/fitcarereport/summary_model.dart';
export 'package:dnalyst/models/fitcarereport/summary_model.dart';

class SummaryWidget extends StatefulWidget {
  const SummaryWidget({super.key});

  @override
  State<SummaryWidget> createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget>
    with TickerProviderStateMixin {
  late SummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.7, 1.7),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 200.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'blurOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 3,
              fillColor: Color(0xFFCC5500),
              icon: Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.white,
                size: 32,
              ),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                Container(
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional(0, -1),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.asset(
                        'assets/images/summary.png',
                        width: double.infinity,
                        height: 470,
                        fit: BoxFit.cover,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 370, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 7,
                              sigmaY: 2,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: Container(
                                      width: double.infinity,
                                      constraints: BoxConstraints(
                                        maxWidth: 800,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0,
                                              1,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Text(
                                                  'SUMMARY',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .headlineMedium
                                                      .override(
                                                    fontFamily: 'Outfit',
                                                    fontSize: 30,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                          'Genomic Analysis',
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .labelMedium
                                                          .override(
                                                        fontFamily:
                                                        'Readex Pro',
                                                        letterSpacing: 0,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .accent2,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      text: 'Report',
                                                      icon: Icon(
                                                        Icons.download,
                                                        size: 15,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40,
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24, 0,
                                                            24, 0),
                                                        iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 0, 0, 0),
                                                        color:
                                                        Color(0xFFCC5500),
                                                        textStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .titleSmall
                                                            .override(
                                                          fontFamily:
                                                          'Readex Pro',
                                                          color: Colors
                                                              .white,
                                                          fontSize: 7,
                                                          letterSpacing:
                                                          0,
                                                        ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 8)),
                                              ),
                                              Align(
                                                alignment:
                                                AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(30, 15, 30, 15),
                                                  child: Text(
                                                    '\"Summaries condense the essence of wisdom into bite-sized brilliance for you.\" \n                    – Unknown',
                                                    textAlign:
                                                    TextAlign.justify,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Readex Pro',
                                                      fontSize: 17,
                                                      letterSpacing: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Text(
                                                  'Based on the overall nutrigenomics analysis, the following table can be utilised as a summary by a trained nutrigenomics expert (doctor or dietitian) to design a personalised diet and lifestyle plan for you.\nThe present plan can take care of the preventive as well as active management of the issues that you may be suffering from.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryText,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                height: 16,
                                                thickness: 1,
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 5),
                                                child: Text(
                                                  'Nutrigenomics Summary',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    fontSize: 20,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Diet Type',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                  child: Text(
                                                                                    'Low Carbs',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                  child: Text(
                                                                                    'Balanced',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Stack(
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                      child: Text(
                                                                                        'Low Fats',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: Colors.black,
                                                                                          letterSpacing: 0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'LOW FAT – NORMAL CARB DIET',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Meal Pattern',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      SingleChildScrollView(
                                                                        scrollDirection:
                                                                        Axis.horizontal,
                                                                        child:
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment.center,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFF249629),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                    child: Text(
                                                                                      'Multiple Small\nMeals',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                    child: Text(
                                                                                      'Balanced',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFFD7191C),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                    child: Text(
                                                                                      'Less Large\nMeals',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SMALL/LARGE MEALS',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Carb Intake Time',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0xFF249629),
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          Icon(
                                                                            Icons.timer_sharp,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'NO RESTRICTION',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Dietary Fat Sensitivity',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                  child: Text(
                                                                                    'Low Carbs',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                  child: Text(
                                                                                    'Balanced',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 22, 10, 22),
                                                                                  child: Text(
                                                                                    'Low Fats',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'INCREASED SENSITIVITY',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Gluten Intake',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      SingleChildScrollView(
                                                                        scrollDirection:
                                                                        Axis.horizontal,
                                                                        child:
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment.center,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFF249629),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 22, 8, 22),
                                                                                    child: Text(
                                                                                      'Full\nGluten Free',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 22, 8, 22),
                                                                                    child: Text(
                                                                                      'Partial\nGluten Free',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFFD7191C),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 22, 8, 22),
                                                                                    child: Text(
                                                                                      'No Gluten\nRestriction',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'AVOID DURING GASTRIC DISTRESS',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Lactose Intake',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      SingleChildScrollView(
                                                                        scrollDirection:
                                                                        Axis.horizontal,
                                                                        child:
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment.center,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFF249629),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                    child: Text(
                                                                                      'Full\nLactose Free',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                    child: Text(
                                                                                      'Partial\nLactose Free',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Color(0x5857636C),
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                child: Card(
                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                  color: Color(0xFFD7191C),
                                                                                  elevation: 5,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(22),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                    child: Text(
                                                                                      'No Lactose\nRestriction',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: Colors.black,
                                                                                        letterSpacing: 0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'AVOID DURING GASTRIC DISTRESS',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Antioxidants',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.pills,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SUPPLEMENTS NEEDED',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Omega-3 Fatty Acids',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.pills,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SUPPLEMENTS NEEDED',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            15,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            '• NON FISH OIL SUPPLEMENTS\n• FISH OIL SUPPLEMENTS',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'VIT B9',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.tree,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'METHYL FOLATE NEEDED ',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'VIT B12',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.pills,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'METHYL COBALAMINE NEEDED',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'VIT E',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.pills,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SUPPLEMENTS NEEDED',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'VIT D',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          Icon(
                                                                            Icons.sunny,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SUPPLEMENT INTAKE + SUN EXPOSURE NEEDED ',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                height: 16,
                                                thickness: 1,
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 5),
                                                child: Text(
                                                  'Exercise Genomics Summary',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    fontSize: 20,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FontStyle.italic,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Exercise Time',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0xFF249629),
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          Icon(
                                                                            Icons.nightlight_round_sharp,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'EVENING EXERCISE ',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Exercise Type',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          15),
                                                                      child:
                                                                      Card(
                                                                        clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0xFF249629),
                                                                        elevation:
                                                                        5,
                                                                        shape:
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(22),
                                                                        ),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20,
                                                                              20,
                                                                              20,
                                                                              20),
                                                                          child:
                                                                          FaIcon(
                                                                            FontAwesomeIcons.dumbbell,
                                                                            color:
                                                                            Colors.white,
                                                                            size:
                                                                            24,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'LOW-MEDIUM INTENSITY',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Injury Risk',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'LOW',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'MEDUIM',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'HIGH',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'HIGH RISK',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Recovery Time',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'LOW',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'MEDUIM',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'HIGH',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'SLOW RECOVERY',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Loss of Fluids',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'LOW',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'MEDUIM',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'HIGH',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'LOW RISK',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 10),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child: Text(
                                                                      'Heart Rate Intensity',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          8),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                        MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFF249629),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'LOW',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Colors.black,
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: FlutterFlowTheme.of(context).warning,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'MEDUIM',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                            AlignmentDirectional(0, 0),
                                                                            child:
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0xFFD7191C),
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(22),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 22, 5, 22),
                                                                                  child: Text(
                                                                                    'HIGH',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: Color(0x5857636C),
                                                                                      letterSpacing: 0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        InkWell(
                                                                          splashColor:
                                                                          Colors.transparent,
                                                                          focusColor:
                                                                          Colors.transparent,
                                                                          hoverColor:
                                                                          Colors.transparent,
                                                                          highlightColor:
                                                                          Colors.transparent,
                                                                          onTap:
                                                                              () async {},
                                                                          child:
                                                                          Text(
                                                                            'MONITOR HEART RATE',
                                                                            textAlign:
                                                                            TextAlign.justify,
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Colors.black,
                                                                              fontSize: 13,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['blurOnPageLoadAnimation']!),
                      ),
                    ),
                  ],
                ),
              ),
              ].addToEnd(SizedBox(height: 38)),
    ),
    ),
    ),
    );
  }
}
