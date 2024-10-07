import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/bookings_model/book_counsellor_calendar_model.dart';
export 'package:dnalyst/models/bookings_model/book_counsellor_calendar_model.dart';

class BookCounsellorCalendarWidget extends StatefulWidget {
  const BookCounsellorCalendarWidget({super.key});

  @override
  State<BookCounsellorCalendarWidget> createState() =>
      _BookCounsellorCalendarWidgetState();
}

class _BookCounsellorCalendarWidgetState
    extends State<BookCounsellorCalendarWidget> with TickerProviderStateMixin {
  late BookCounsellorCalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookCounsellorCalendarModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            'Calendar',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 24,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: true,
                      isScrollable: true,
                      labelStyle:
                      FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                      ),
                      unselectedLabelStyle: TextStyle(),
                      labelColor: FlutterFlowTheme.of(context).primaryText,
                      unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                      unselectedBackgroundColor:
                      FlutterFlowTheme.of(context).alternate,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2,
                      borderRadius: 12,
                      elevation: 0,
                      labelPadding:
                      EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                      tabs: [
                        Tab(
                          text: 'Month',
                        ),
                        Tab(
                          text: 'Week',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [() async {}, () async {}][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
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
                                  ),
                                  child: FlutterFlowCalendar(
                                    color: Color(0xFFCC5500),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    weekFormat: false,
                                    weekStartsMonday: true,
                                    onChange: (DateTimeRange? newSelectedDate) {
                                      setState(() =>
                                      _model.calendarSelectedDay1 =
                                          newSelectedDate);
                                    },
                                    titleStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0,
                                    ),
                                    dayOfWeekStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    dateStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    selectedDateStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    inactiveDateStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 12, 0, 0),
                                      child: Text(
                                        'Slot booked',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 0, 16, 12),
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
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
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(4,
                                                              0, 0, 0),
                                                          child: Text(
                                                            'Appoinment date',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .headlineSmall
                                                                .override(
                                                              fontFamily:
                                                              'Outfit',
                                                              letterSpacing:
                                                              0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    8,
                                                                    0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                  Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .accent3,
                                                                  elevation: 0,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(8),
                                                                  ),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        8,
                                                                        4),
                                                                    child: Text(
                                                                      '2:20pm',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).tertiary,
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    10,
                                                                    0,
                                                                    8,
                                                                    0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                  Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .accent3,
                                                                  elevation: 0,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(8),
                                                                  ),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        8,
                                                                        4),
                                                                    child: Text(
                                                                      '3:20pm',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).tertiary,
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Wed, 03/04/2024',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodySmall
                                                                    .override(
                                                                  fontFamily:
                                                                  'Readex Pro',
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 470,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 20, 50, 20),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        Navigator.of(context).pushNamed('SlotbookedWidget');
                                      },
                                      text: 'Confirm',
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        color: Color(0xFFCC5500),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0,
                                        ),
                                        elevation: 5,
                                        borderSide: BorderSide(
                                          color: Color(0xFFCC5500),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(14),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .accent1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
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
                                  ),
                                  child: FlutterFlowCalendar(
                                    color: Color(0xFFCC5500),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    weekFormat: true,
                                    weekStartsMonday: true,
                                    onChange: (DateTimeRange? newSelectedDate) {
                                      setState(() =>
                                      _model.calendarSelectedDay2 =
                                          newSelectedDate);
                                    },
                                    titleStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0,
                                    ),
                                    dayOfWeekStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    dateStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    selectedDateStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                    inactiveDateStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 12, 0, 0),
                                      child: Text(
                                        'Coming Up',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 0, 16, 12),
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
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
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(4,
                                                              0, 0, 0),
                                                          child: Text(
                                                            'Doctors Check In',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .headlineSmall
                                                                .override(
                                                              fontFamily:
                                                              'Outfit',
                                                              letterSpacing:
                                                              0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    8,
                                                                    0),
                                                                child: Card(
                                                                  clipBehavior:
                                                                  Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .accent3,
                                                                  elevation: 0,
                                                                  shape:
                                                                  RoundedRectangleBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(8),
                                                                  ),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        8,
                                                                        4),
                                                                    child: Text(
                                                                      '2:20pm',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).tertiary,
                                                                        letterSpacing:
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Wed, 03/08/2022',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodySmall
                                                                    .override(
                                                                  fontFamily:
                                                                  'Readex Pro',
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        shape:
                                                        BoxShape.rectangle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                      child: Icon(
                                                        Icons
                                                            .add_photo_alternate_outlined,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 12, 0, 0),
                                      child: Text(
                                        'Past Due',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 24),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16, 0, 16, 12),
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
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
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(4,
                                                              0, 0, 0),
                                                          child: Text(
                                                            'Check In',
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .headlineSmall
                                                                .override(
                                                              fontFamily:
                                                              'Outfit',
                                                              letterSpacing:
                                                              0,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0,
                                                                  0,
                                                                  8,
                                                                  0),
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .accent1,
                                                                elevation: 0,
                                                                shape:
                                                                RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      8),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      8,
                                                                      4,
                                                                      8,
                                                                      4),
                                                                  child: Text(
                                                                    '2:20pm',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyMedium
                                                                        .override(
                                                                      fontFamily:
                                                                      'Readex Pro',
                                                                      color:
                                                                      FlutterFlowTheme.of(context).primary,
                                                                      letterSpacing:
                                                                      0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  4,
                                                                  0,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'Wed, 03/08/2022',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodySmall
                                                                    .override(
                                                                  fontFamily:
                                                                  'Readex Pro',
                                                                  letterSpacing:
                                                                  0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        shape:
                                                        BoxShape.rectangle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                      child: Icon(
                                                        Icons
                                                            .add_photo_alternate_outlined,
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        size: 24,
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
