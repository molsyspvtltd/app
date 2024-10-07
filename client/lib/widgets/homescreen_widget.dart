import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/homescreen_model.dart';
export 'package:dnalyst/models/homescreen_model.dart';
import 'package:dnalyst/services/notification.dart';

class HomescreenWidget extends StatefulWidget {
  const HomescreenWidget({super.key});

  @override
  State<HomescreenWidget> createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget>
    with TickerProviderStateMixin {
  late HomescreenModel _model;

  // late final String username;


  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};


  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomescreenModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(30.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects:  [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
      anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        backgroundColor: Color(0xFFF1F4F8),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                height: 500,
                child: Stack(
                  alignment: AlignmentDirectional(0, -1),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.05, -1),
                      child: Image.asset(
                        'assets/images/homescreenbg.jpg',
                        width: double.infinity,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Color(0x73090F13),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 6, 16, 6),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.of(context).pushNamed('ProfilescreenWidget');
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5,
                                        shape: const CircleBorder(),
                                        child: Container(
                                          width: 53,
                                          height: 53,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xB4CC5500),
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(2),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(50),
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
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Welcome, Anu',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 16, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20,
                                      buttonSize: 40,
                                      icon: Icon(
                                        Icons.notifications_none,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        Navigator.of(context).pushNamed('NotificationscreenWidget');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 60, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 8, 0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: '       Search',
                                          labelStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFFDFDFD),
                                            letterSpacing: 0,
                                          ),
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFCC5500),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0010),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                          UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF0010),
                                              width: 2,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search_sharp,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0,
                                        ),
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 38, 16, 15),
                                child: Text(
                                  '\"Enhance Life With dnalyst\"',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: 700,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 20),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          height: 8,
                                          thickness: 4,
                                          indent: 140,
                                          endIndent: 140,
                                          color: Color(0xFFE0E3E7),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 16, 16, 0),
                                          child: Text(
                                            'Dashboard',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 24,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation1']!),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 4, 16, 0),
                                          child: Text(
                                            'User',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily:
                                              'Plus Jakarta Sans',
                                              color: Color(0xFF57636C),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation2']!),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 12, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 0, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset: Offset(
                                                              0.0,
                                                              4,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                        border: Border.all(
                                                          color:
                                                          Color(0xFFF1F4F8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/bookcounsiler.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                16,
                                                                12,
                                                                16,
                                                                12),
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'Book Counsellor',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Book an Appionment',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                  Colors
                                                                      .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                                  onTap:
                                                                      () async {
                                                                        Navigator.of(context).pushNamed(
                                                                        'BookCounsellorWidget');
                                                                  },
                                                                  child:
                                                                  Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                    8,
                                                                    shape:
                                                                    RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: Color(
                                                                            0xFF14181B),
                                                                        borderRadius:
                                                                        BorderRadius.circular(12),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Book Now',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                            color: Colors.white,
                                                                            fontSize: 14,
                                                                            letterSpacing: 0,
                                                                            fontWeight: FontWeight.normal,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation1']!),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 0, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset: Offset(
                                                              0.0,
                                                              4,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                        border: Border.all(
                                                          color:
                                                          Color(0xFFF1F4F8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/booktest.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                16,
                                                                12,
                                                                16,
                                                                12),
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'Book Test',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Book an Appionment',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                  Colors
                                                                      .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                                  onTap:
                                                                      () async {
                                                                        Navigator.of(context).pushNamed(
                                                                        'BookTestWidget');
                                                                  },
                                                                  child:
                                                                  Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                    8,
                                                                    shape:
                                                                    RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: Color(
                                                                            0xFF14181B),
                                                                        borderRadius:
                                                                        BorderRadius.circular(12),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Book Now',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                            color: Colors.white,
                                                                            fontSize: 14,
                                                                            letterSpacing: 0,
                                                                            fontWeight: FontWeight.normal,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation2']!),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 0, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset: Offset(
                                                              0.0,
                                                              4,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                        border: Border.all(
                                                          color:
                                                          Color(0xFFF1F4F8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/bookdoctor.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                16,
                                                                12,
                                                                16,
                                                                12),
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'Book Doctor',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Book an Appionment',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                  Colors
                                                                      .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                                  onTap:
                                                                      () async {
                                                                        Navigator.of(context).pushNamed(
                                                                        'DoctorWidget');
                                                                  },
                                                                  child:
                                                                  Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                    8,
                                                                    shape:
                                                                    RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: Color(
                                                                            0xFF14181B),
                                                                        borderRadius:
                                                                        BorderRadius.circular(12),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Book Now',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                            color: Colors.white,
                                                                            fontSize: 14,
                                                                            letterSpacing: 0,
                                                                            fontWeight: FontWeight.normal,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation3']!),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 8, 16, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                    ),
                                                    child: Container(
                                                      width: 270,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 8,
                                                            color: Color(
                                                                0x230F1113),
                                                            offset: Offset(
                                                              0.0,
                                                              4,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(12),
                                                        border: Border.all(
                                                          color:
                                                          Color(0xFFF1F4F8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/bookdietition.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 110,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                16,
                                                                12,
                                                                16,
                                                                12),
                                                            child: Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'Book Dietition',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Book an Appionment',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                  Colors
                                                                      .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                                  onTap:
                                                                      () async {
                                                                        Navigator.of(context).pushNamed(
                                                                        'BookDietitionWidget');
                                                                  },
                                                                  child:
                                                                  Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                    5,
                                                                    shape:
                                                                    RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    child:
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: Color(
                                                                            0xFF14181B),
                                                                        borderRadius:
                                                                        BorderRadius.circular(12),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Book Now',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                            color: Colors.white,
                                                                            fontSize: 14,
                                                                            letterSpacing: 0,
                                                                            fontWeight: FontWeight.normal,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation4']!),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 15, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Align(
                                              alignment:
                                              AlignmentDirectional(0, 0),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection:
                                                Axis.horizontal,
                                                children: [
                                                  Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        -1, 0),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          10, 0, 0, 10),
                                                      child: InkWell(
                                                        splashColor:
                                                        Colors.transparent,
                                                        focusColor:
                                                        Colors.transparent,
                                                        hoverColor:
                                                        Colors.transparent,
                                                        highlightColor:
                                                        Colors.transparent,
                                                        onTap: () async {
                                                          Navigator.of(context).pushNamed(
                                                              'DoctorPrescriptionWidget');
                                                        },
                                                        child: Container(
                                                          width: 120,
                                                          height: 70,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Colors.black,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0xFFCC5500),
                                                                offset: Offset(
                                                                  0.0,
                                                                  4,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                            border: Border.all(
                                                              color:
                                                              Colors.black,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                            child: Text(
                                                              'Doctor Prescription',
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                15,
                                                                letterSpacing:
                                                                0,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                          'containerOnPageLoadAnimation5']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 20, 10),
                                                    child: InkWell(
                                                      splashColor:
                                                      Colors.transparent,
                                                      focusColor:
                                                      Colors.transparent,
                                                      hoverColor:
                                                      Colors.transparent,
                                                      highlightColor:
                                                      Colors.transparent,
                                                      onTap: () async {
                                                        Navigator.of(context).pushNamed(
                                                            'ReportWidget');
                                                      },
                                                      child: Container(
                                                        width: 120,
                                                        height: 70,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors.black,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 8,
                                                              color: Color(
                                                                  0xFFCC5500),
                                                              offset: Offset(
                                                                0.0,
                                                                4,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                            color: Colors.black,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                          child: Text(
                                                            'Report',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Readex Pro',
                                                              color: Colors
                                                                  .white,
                                                              fontSize: 15,
                                                              letterSpacing:
                                                              0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                        'containerOnPageLoadAnimation6']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        1, 0),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 10, 10),
                                                      child: InkWell(
                                                        splashColor:
                                                        Colors.transparent,
                                                        focusColor:
                                                        Colors.transparent,
                                                        hoverColor:
                                                        Colors.transparent,
                                                        highlightColor:
                                                        Colors.transparent,
                                                        onTap: () async {
                                                          Navigator.of(context).pushNamed(
                                                              'DietChartWidget');
                                                        },
                                                        child: Container(
                                                          width: 120,
                                                          height: 70,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Colors.black,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 8,
                                                                color: Color(
                                                                    0xFFCC5500),
                                                                offset: Offset(
                                                                  0.0,
                                                                  4,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                12),
                                                            border: Border.all(
                                                              color:
                                                              Colors.black,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                            child: Text(
                                                              'Diet Chart',
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                15,
                                                                letterSpacing:
                                                                0,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                          'containerOnPageLoadAnimation7']!),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 12, 16, 0),
                                          child: Text(
                                            'Categories',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF14181B),
                                              fontSize: 24,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation3']!),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 4, 16, 0),
                                          child: Text(
                                            'Insight',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                              fontFamily:
                                              'Plus Jakarta Sans',
                                              color: Color(0xFF57636C),
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation4']!),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 12, 0, 20),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(16, 8, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        const Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Hero(
                                                          tag: 'italyImage01',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/slimcare.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'slimKr',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Weight Loss',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: const Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                      Navigator.of(context).pushNamed(
                                                                      'SlimCareWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    const AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        const Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Hero(
                                                          tag: 'italyImage02',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/fitcare.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'fitKr',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        const Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Stay Fit',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                      Navigator.of(context).pushNamed(
                                                                      'FitCareWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    const AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        const Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Hero(
                                                          tag: 'italyImage03',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/fitcarepro.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'fitKrPro',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        const Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Sports Genomics',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: const Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                      Navigator.of(context).pushNamed(
                                                                      'FitCareproWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    const AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        const Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Hero(
                                                          tag: 'italyImage04',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/kincare.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'kinKr',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Child Genomics',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: const Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                      Navigator.of(context).pushNamed(
                                                                      'KinCareWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    const AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        const Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              5, 0, 5),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                const AlignmentDirectional(
                                                                    0, 0),
                                                                child: Text(
                                                                  'Coming Soon !',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Readex Pro',
                                                                    color: const Color(
                                                                        0xDD000000),
                                                                    fontSize:
                                                                    17,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Hero(
                                                          tag: 'italyImage05',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/hercare.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'herKr',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        const Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Women Genomics',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: const Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                      Navigator.of(context).pushNamed(
                                                                      'HerCareWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    const AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              5, 0, 5),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                                child: Text(
                                                                  'Coming Soon !',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Readex Pro',
                                                                    color: Color(
                                                                        0xDD000000),
                                                                    fontSize:
                                                                    17,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Hero(
                                                          tag: 'italyImage06',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/gutcare.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'gutKr',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Gut Health',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                  Navigator.of(context).pushNamed(
                                                                      'GutCareWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 8),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        12),
                                                  ),
                                                  child: Container(
                                                    width: 270,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 8,
                                                          color:
                                                          Color(0x230F1113),
                                                          offset: Offset(
                                                            0.0,
                                                            4,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          12),
                                                      border: Border.all(
                                                        color:
                                                        Color(0xFFF1F4F8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              5, 0, 5),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                                child: Text(
                                                                  'Coming Soon !',
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium
                                                                      .override(
                                                                    fontFamily:
                                                                    'Readex Pro',
                                                                    color: Color(
                                                                        0xDD000000),
                                                                    fontSize:
                                                                    17,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Hero(
                                                          tag: 'italyImage07',
                                                          transitionOnUserGestures:
                                                          true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  0),
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                            ),
                                                            child:
                                                            Image.asset(
                                                              'assets/images/gutcarepro.jpg',
                                                              width: double
                                                                  .infinity,
                                                              height: 200,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              16,
                                                              12,
                                                              16,
                                                              12),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Text(
                                                                      'gutKrPro',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyLarge
                                                                          .override(
                                                                        fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                        color:
                                                                        Color(0xFF14181B),
                                                                        fontSize:
                                                                        16,
                                                                        letterSpacing:
                                                                        0,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Gut Health',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF14181B),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                Colors
                                                                    .transparent,
                                                                onTap:
                                                                    () async {
                                                                  Navigator.of(context).pushNamed(
                                                                      'GutCareproWidget');
                                                                },
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        12),
                                                                  ),
                                                                  child:
                                                                  Container(
                                                                    height: 32,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Color(
                                                                          0xFF14181B),
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          12),
                                                                    ),
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                      child:
                                                                      Text(
                                                                        'Subscribe',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                          color: Colors.white,
                                                                          fontSize: 14,
                                                                          letterSpacing: 0,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ).animateOnPageLoad(animationsMap[
                                          'listViewOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
