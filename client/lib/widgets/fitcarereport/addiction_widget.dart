import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/fitcarereport/addiction_model.dart';
export 'package:dnalyst/models/fitcarereport/addiction_model.dart';

class AddictionWidget extends StatefulWidget {
  const AddictionWidget({super.key});

  @override
  State<AddictionWidget> createState() => _AddictionWidgetState();
}

class _AddictionWidgetState extends State<AddictionWidget>
    with TickerProviderStateMixin {
  late AddictionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddictionModel());

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
                        'assets/images/addiction.png',
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
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 10),
                                              child: Text(
                                                'ADDICTION',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                        'Break Free, Embrace Clarity.',
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                        context)
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
                                                    color: FlutterFlowTheme.of(
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
                                                          .fromSTEB(
                                                          24, 0, 24, 0),
                                                      iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 0),
                                                      color: Color(0xFFCC5500),
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
                                                        color:
                                                        Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8),
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
                                                  '\"The first step to overcoming addiction is believing that you have the power to change your story.” \n                    - Unknown',
                                                  textAlign: TextAlign.justify,
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
                                                'Genetics can play a role in the development of addictions, with certain genes influencing an individual\'s vulnerability to addiction. However, genetics alone does not determine addiction, as environmental factors and lifestyle choices also play a crucial role in addiction development. Genetics can potentially be used to predict and manage addictions by identifying individuals who may be at a higher risk for developing addiction based on their genetic makeup.\n This information can help tailor prevention strategies, early interventions, and personalized treatment plans to mitigate the risk of addiction or manage existing addictions more effectively',
                                                textAlign: TextAlign.justify,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Readex Pro',
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
                                                  .fromSTEB(0, 5, 0, 10),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
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
                                                    padding: EdgeInsets.all(10),
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
                                                                    'Alcohol Addiction',
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
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        15),
                                                                    child: Card(
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
                                                                          Icons
                                                                              .no_drinks_sharp,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'LOW',
                                                                        textAlign:
                                                                        TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                          fontFamily: 'Readex Pro',
                                                                          color: Colors.black,
                                                                          fontSize: 13,
                                                                          letterSpacing: 0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
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
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.justify,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            color: Color(0x8657636C),
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
                                                  BorderRadius.circular(12),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
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
                                                    padding: EdgeInsets.all(10),
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
                                                                    'Altruism',
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
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        15),
                                                                    child: Card(
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
                                                                          Icons
                                                                              .front_hand_outlined,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'LOW',
                                                                        textAlign:
                                                                        TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                          fontFamily: 'Readex Pro',
                                                                          color: Colors.black,
                                                                          fontSize: 13,
                                                                          letterSpacing: 0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
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
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.justify,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            color: Color(0x8657636C),
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
                                                  BorderRadius.circular(12),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
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
                                                    padding: EdgeInsets.all(10),
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
                                                                    'Smoking',
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
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        15),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                          Icons
                                                                              .smoke_free_sharp,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'LOW',
                                                                        textAlign:
                                                                        TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                          fontFamily: 'Readex Pro',
                                                                          color: Color(0x8657636C),
                                                                          fontSize: 13,
                                                                          letterSpacing: 0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
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
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.justify,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
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
                                                  BorderRadius.circular(12),
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
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
                                                    padding: EdgeInsets.all(10),
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
                                                                    'Snacking Habits',
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
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        15),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                          Icons
                                                                              .sync,
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
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'LOW',
                                                                        textAlign:
                                                                        TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                          fontFamily: 'Readex Pro',
                                                                          color: Color(0x8657636C),
                                                                          fontSize: 13,
                                                                          letterSpacing: 0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
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
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.justify,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
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
