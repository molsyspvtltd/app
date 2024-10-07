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

import 'package:dnalyst/models/fitcarereport/sportsand_fitness_model.dart';
export 'package:dnalyst/models/fitcarereport/sportsand_fitness_model.dart';

class SportsandFitnessWidget extends StatefulWidget {
  const SportsandFitnessWidget({super.key});

  @override
  State<SportsandFitnessWidget> createState() => _SportsandFitnessWidgetState();
}

class _SportsandFitnessWidgetState extends State<SportsandFitnessWidget>
    with TickerProviderStateMixin {
  late SportsandFitnessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SportsandFitnessModel());

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
                        'assets/images/sports.png',
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
                                                'SPORTS & FITNESS',
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
                                                        'Unleash your strength.',
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
                                                  '“The body achieves what the mind believes” - Erin Gray',
                                                  textAlign: TextAlign.center,
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
                                                'Exercise is the best way to keep the body and mind fit. Optimum exercise which is suitable for the body, ensures not just fitness but also ensures that many health issues are prevented. Overdoing of exercise is as harmful as not performing any exercise. \nOur genes help us understand the right type, time, and best way to keep ourselves fit.',
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 10),
                                              child: Text(
                                                '*Maximum heart rate to be monitored and maintained during exercise may vary also based on the individuals current heart health and other health aspects. Consult a sports medicine and or a cardiologist to know your heart rate limits during exercise.',
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
                                                  fontWeight:
                                                  FontWeight.w300,
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
                                                'Exercise Type',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                                    'Power',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'MEDIUM',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          'Moderately increased power\npotential as compared to the\ntheoretical highest.',
                                                                          textAlign:
                                                                          TextAlign.justify,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            color: Color(0xFFFF2A37),
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
                                                                    'Endurance',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'AVERAGE',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Normal endurance potential as \ncompared to the theoretical\nhighest.',
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
                                                'Exercise Time',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                                    'Morning Vs Evening',
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
                                                                          0xFF9F9F9F),
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
                                                                              .nightlight_round_sharp,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).warning,
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Evening time is more beneficial for exercise',
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
                                                'Power Exercise',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                                    'Types of Exercises',
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
                                                                          0xFF9F9F9F),
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
                                                                          FontAwesomeIcons
                                                                              .dumbbell,
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
                                                                          'Weight training Squats Kettlebell workout',
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
                                                                    'Strength Workout',
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
                                                                          0xFF9F9F9F),
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
                                                                              .sports_gymnastics,
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Glute bridge Squats Push ups',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Heart Rate Response to Exercise',
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
                                                                          0xFF9F9F9F),
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
                                                                          FontAwesomeIcons
                                                                              .heartbeat,
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Monitor heart rate during exercise\nMax Heart rate 100-120 bpm*',
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
                                                'Endurance Exercise',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Endurance Capacity',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'AVERAGE',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Normal endurance potentialas compared \nto the theoretical highest',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Fatigue Resistance',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'LOW',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Low ability to perform fatigue resistance exercises',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Blood flow ',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'NORMAL',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Tendency of normal blood flow. Exercises \ncan be planned accordingly',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Oxygen / VO2 Efficiency',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'LOW',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Low VO2 Max. Endurance exercises will \nneed more practice',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Water Loss',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased tendency of water loss during \nendurance exercise',
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
                                                'Recovery',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Lactate Clearance',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'LOW',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Slow lactate clearance.\nEndurance potential is\naffected than normal',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Recovery Efficiency',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'LOW',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Low recovery rate from exercise.\nEnsure proper rest interval if\nlactate clearance is low',
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
                                                'Injury Management',
                                                style:
                                                FlutterFlowTheme.of(context)
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Body Composition Tendency',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'LOW',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Low muscle mass Increased fat Low bone density',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased injury risk. Warm-up,\nantioxidant & ant inflammatory\nintake is essential ',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Risk of Achilles Tendon Injury',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased risk .\nImprove flexibility .\nChose right footwear',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Risk of Anterior Cruciate Ligament',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased risk .\nMaintain weight\nMaintain flexibility',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Rupture',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased risk Avoid repetitive movements \nImprove flexibility',
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
                                                  .fromSTEB(0, 5, 0, 15),
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
                                                                    'Exercise Associated Muscle Cramps',
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
                                                                            15,
                                                                            15,
                                                                            15,
                                                                            15),
                                                                        child:
                                                                        Text(
                                                                          'HIGH',
                                                                          textAlign:
                                                                          TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                            fontFamily: 'Readex Pro',
                                                                            letterSpacing: 0,
                                                                          ),
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
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Increased tendency Maintain water & \nelectrolyte intake Warm up is useful',
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
