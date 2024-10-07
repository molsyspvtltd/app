import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/food_diet_model.dart';
export 'package:dnalyst/models/food_diet_model.dart';

class FoodDietWidget extends StatefulWidget {
  const FoodDietWidget({super.key});

  @override
  State<FoodDietWidget> createState() => _FoodDietWidgetState();
}

class _FoodDietWidgetState extends State<FoodDietWidget> {
  late FoodDietModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodDietModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFFCC5500),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            buttonSize: 46,
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
            'Diet Chart',
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
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: Image.asset(
                          'assets/images/foodchart.jpg',
                        ).image,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 750,
                        ),
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                2,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Week 1',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 24,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 12),
                                  child: Text(
                                    'Day 1',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 15,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 12),
                                      child: Container(
                                        width: MediaQuery.sizeOf(context).width,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                              offset: Offset(
                                                0,
                                                1,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                          BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 1),
                                                child: Container(
                                                  width: 100,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0,
                                                        color:
                                                        Color(0xFFE0E3E7),
                                                        offset: Offset(
                                                          0,
                                                          1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 8, 0, 8),
                                                        child: Container(
                                                          width: 4,
                                                          height: 100,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Color(
                                                                0xFFCC5500),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                4),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              12,
                                                              12,
                                                              12,
                                                              0),
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    7),
                                                                child: Text(
                                                                  'Breakfast',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodySmall
                                                                      .override(
                                                                    fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                    14,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '- Oatmeal with fresh berries and a drizzle of honey.\n- A glass of low-fat milk',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 1),
                                                child: Container(
                                                  width: 100,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0,
                                                        color:
                                                        Color(0xFFE0E3E7),
                                                        offset: Offset(
                                                          0,
                                                          1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 8, 0, 8),
                                                        child: Container(
                                                          width: 4,
                                                          height: 100,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Color(
                                                                0xFFCC5500),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                4),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              12,
                                                              12,
                                                              12,
                                                              0),
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    7),
                                                                child: Text(
                                                                  ' Morning Snack',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodySmall
                                                                      .override(
                                                                    fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                    14,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '- Apple with a small handful of almonds.',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 1),
                                                child: Container(
                                                  width: 100,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0,
                                                        color:
                                                        Color(0xFFE0E3E7),
                                                        offset: Offset(
                                                          0,
                                                          1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 8, 0, 8),
                                                        child: Container(
                                                          width: 4,
                                                          height: 100,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Color(
                                                                0xFFCC5500),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                4),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              12,
                                                              12,
                                                              12,
                                                              0),
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    7),
                                                                child: Text(
                                                                  'Lunch',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodySmall
                                                                      .override(
                                                                    fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                    14,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '- Grilled chicken salad with mixed greens, cherry tomatoes, cucumbers, and a light vinaigrette.\n- Whole grain bread slice',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 1),
                                                child: Container(
                                                  width: 100,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0,
                                                        color:
                                                        Color(0xFFE0E3E7),
                                                        offset: Offset(
                                                          0,
                                                          1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 8, 0, 8),
                                                        child: Container(
                                                          width: 4,
                                                          height: 100,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Color(
                                                                0xFFCC5500),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                4),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              12,
                                                              12,
                                                              12,
                                                              0),
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    7),
                                                                child: Text(
                                                                  'Evening Snack',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodySmall
                                                                      .override(
                                                                    fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                    14,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '- A handful of almonds',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
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
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 1),
                                                child: Container(
                                                  width: 100,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0,
                                                        color:
                                                        Color(0xFFE0E3E7),
                                                        offset: Offset(
                                                          0,
                                                          1,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 8, 0, 8),
                                                        child: Container(
                                                          width: 4,
                                                          height: 100,
                                                          decoration:
                                                          BoxDecoration(
                                                            color: Color(
                                                                0xFFCC5500),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                4),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              12,
                                                              12,
                                                              12,
                                                              0),
                                                          child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    7),
                                                                child: Text(
                                                                  'Dinner',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodySmall
                                                                      .override(
                                                                    fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                    color: Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                    14,
                                                                    letterSpacing:
                                                                    0,
                                                                    fontWeight:
                                                                    FontWeight.w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '- Baked salmon with steamed broccoli and quinoa.',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyMedium
                                                                    .override(
                                                                  fontFamily:
                                                                  'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                  14,
                                                                  letterSpacing:
                                                                  0,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .normal,
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
                                      ],
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
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 2',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Smoothie with spinach, banana, and almond milk.\n- Whole grain toast with avocado',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Carrot sticks with hummus.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Lentil soup with a side of mixed green salad.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A handful of mixed nuts.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Stir-fried tofu with mixed vegetables and brown rice.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 3',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Scrambled eggs with spinach and tomatoes.\n- A slice of whole grain toast.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A Banana.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Turkey and avocado wrap with whole grain tortilla.\n- Side of mixed greens.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A small bowl of cottage cheese with pineapple chunks.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Grilled shrimp with a side of quinoa and steamed asparagus.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 4',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Greek yogurt with granola and fresh strawberries.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A handful of baby carrots.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Quinoa salad with black beans, corn, bell peppers, and a lime dressing.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A small apple.\n- A small bowl of mixed berries.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Baked chicken breast with roasted sweet potatoes and green beans.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 5',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Whole grain pancakes with a drizzle of maple syrup.\n-  side of fresh fruit.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A handful of grapes.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Tuna salad with mixed greens, cherry tomatoes, and a light vinaigrette.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '-A small serving of trail mix.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Beef stir-fry with broccoli, bell peppers, and brown rice.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 6',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Smoothie bowl with blended acai, banana, and almond milk, topped with granola and fresh berries.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A handful of almonds.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Grilled chicken Caesar salad.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Celery sticks with peanut butter.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Baked cod with a side of quinoa and steamed spinach.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 20),
                //   child: Wrap(
                //     spacing: 16,
                //     runSpacing: 16,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       Container(
                //         constraints: BoxConstraints(
                //           maxWidth: 750,
                //         ),
                //         decoration: BoxDecoration(
                //           color:
                //           FlutterFlowTheme.of(context).secondaryBackground,
                //           boxShadow: [
                //             BoxShadow(
                //               blurRadius: 4,
                //               color: Color(0x33000000),
                //               offset: Offset(
                //                 0,
                //                 2,
                //               ),
                //             )
                //           ],
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.all(16),
                //           child: SingleChildScrollView(
                //             child: Column(
                //               mainAxisSize: MainAxisSize.max,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 4, 0, 12),
                //                   child: Text(
                //                     'Day 7',
                //                     style: FlutterFlowTheme.of(context)
                //                         .labelMedium
                //                         .override(
                //                       fontFamily: 'Readex Pro',
                //                       fontSize: 15,
                //                       letterSpacing: 0,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //                 ListView(
                //                   padding: EdgeInsets.zero,
                //                   shrinkWrap: true,
                //                   scrollDirection: Axis.vertical,
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           0, 0, 0, 12),
                //                       child: Container(
                //                         width: MediaQuery.sizeOf(context).width,
                //                         decoration: BoxDecoration(
                //                           color: FlutterFlowTheme.of(context)
                //                               .secondaryBackground,
                //                           boxShadow: [
                //                             BoxShadow(
                //                               blurRadius: 0,
                //                               color:
                //                               FlutterFlowTheme.of(context)
                //                                   .alternate,
                //                               offset: Offset(
                //                                 0,
                //                                 1,
                //                               ),
                //                             )
                //                           ],
                //                           borderRadius:
                //                           BorderRadius.circular(0),
                //                         ),
                //                       ),
                //                     ),
                //                     Container(
                //                       width: MediaQuery.sizeOf(context).width,
                //                       decoration: BoxDecoration(
                //                         color: FlutterFlowTheme.of(context)
                //                             .secondaryBackground,
                //                         borderRadius: BorderRadius.circular(12),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Breakfast',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Whole grain cereal with low-fat milk and a sliced banana.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   ' Morning Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- An orange.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Lunch',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Veggie wrap with hummus, cucumbers, bell peppers, and spinach in a whole grain tortilla.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Evening Snack',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- A handful of walnuts.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: EdgeInsetsDirectional.fromSTEB(
                //                       0, 0, 0, 10),
                //                   child: SingleChildScrollView(
                //                     child: Column(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                       MainAxisAlignment.start,
                //                       crossAxisAlignment:
                //                       CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding:
                //                           EdgeInsetsDirectional.fromSTEB(
                //                               0, 4, 0, 0),
                //                           child: ListView(
                //                             padding: EdgeInsets.zero,
                //                             shrinkWrap: true,
                //                             scrollDirection: Axis.vertical,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsetsDirectional
                //                                     .fromSTEB(0, 0, 0, 1),
                //                                 child: Container(
                //                                   width: 100,
                //                                   height: 120,
                //                                   decoration: BoxDecoration(
                //                                     color: Colors.white,
                //                                     boxShadow: [
                //                                       BoxShadow(
                //                                         blurRadius: 0,
                //                                         color:
                //                                         Color(0xFFE0E3E7),
                //                                         offset: Offset(
                //                                           0,
                //                                           1,
                //                                         ),
                //                                       )
                //                                     ],
                //                                   ),
                //                                   child: Row(
                //                                     mainAxisSize:
                //                                     MainAxisSize.max,
                //                                     crossAxisAlignment:
                //                                     CrossAxisAlignment
                //                                         .start,
                //                                     children: [
                //                                       Padding(
                //                                         padding:
                //                                         EdgeInsetsDirectional
                //                                             .fromSTEB(
                //                                             0, 8, 0, 8),
                //                                         child: Container(
                //                                           width: 4,
                //                                           height: 100,
                //                                           decoration:
                //                                           BoxDecoration(
                //                                             color: Color(
                //                                                 0xFFCC5500),
                //                                             borderRadius:
                //                                             BorderRadius
                //                                                 .circular(
                //                                                 4),
                //                                           ),
                //                                         ),
                //                                       ),
                //                                       Expanded(
                //                                         child: Padding(
                //                                           padding:
                //                                           EdgeInsetsDirectional
                //                                               .fromSTEB(
                //                                               12,
                //                                               12,
                //                                               12,
                //                                               0),
                //                                           child: Column(
                //                                             mainAxisSize:
                //                                             MainAxisSize
                //                                                 .max,
                //                                             crossAxisAlignment:
                //                                             CrossAxisAlignment
                //                                                 .start,
                //                                             children: [
                //                                               Padding(
                //                                                 padding:
                //                                                 EdgeInsetsDirectional
                //                                                     .fromSTEB(
                //                                                     0,
                //                                                     0,
                //                                                     0,
                //                                                     7),
                //                                                 child: Text(
                //                                                   'Dinner',
                //                                                   style: FlutterFlowTheme.of(
                //                                                       context)
                //                                                       .bodySmall
                //                                                       .override(
                //                                                     fontFamily:
                //                                                     'Plus Jakarta Sans',
                //                                                     color: Color(
                //                                                         0xFF14181B),
                //                                                     fontSize:
                //                                                     14,
                //                                                     letterSpacing:
                //                                                     0,
                //                                                     fontWeight:
                //                                                     FontWeight.w600,
                //                                                   ),
                //                                                 ),
                //                                               ),
                //                                               Text(
                //                                                 '- Baked eggplant with a side of couscous and a mixed green salad.',
                //                                                 style: FlutterFlowTheme.of(
                //                                                     context)
                //                                                     .bodyMedium
                //                                                     .override(
                //                                                   fontFamily:
                //                                                   'Plus Jakarta Sans',
                //                                                   color: Color(
                //                                                       0xFF14181B),
                //                                                   fontSize:
                //                                                   14,
                //                                                   letterSpacing:
                //                                                   0,
                //                                                   fontWeight:
                //                                                   FontWeight
                //                                                       .normal,
                //                                                 ),
                //                                               ),
                //                                             ],
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ],
                //                                   ),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
