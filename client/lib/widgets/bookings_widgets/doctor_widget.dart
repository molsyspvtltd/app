import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/bookings_model/doctor_model.dart';
export 'package:dnalyst/models/bookings_model/doctor_model.dart';

class DoctorWidget extends StatefulWidget {
  const DoctorWidget({super.key});

  @override
  State<DoctorWidget> createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  late DoctorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoctorModel());
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
            'Doctor',
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
                Padding(
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/doctor.jpg',
                      width: double.infinity,
                      height: 330,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Primary Physician',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                            child: Text(
                              'Dr. Will Hobbiton',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF101213),
                                fontSize: 24,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Primary Care, Intentional Medicine',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF101213),
                              fontSize: 14,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                      () => _model.ratingBarValue = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFF3A743),
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue ??= 4,
                              unratedColor: Color(0xFFE0E3E7),
                              itemCount: 5,
                              itemSize: 24,
                              glowColor: Color(0xFFF3A743),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Text(
                              'Doctor Bio',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF101213),
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                              child: Text(
                                'Dr. Will Hobbiton is a board-certified internal medicine specialist with over 15 years of experience treating patients in both hospital and private practice settings. She is passionate about preventive care and dedicated to providing her patients with the highest level of personalized medical attention, while staying updated on the latest advancements in her field.',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: FFButtonWidget(
                              onPressed: () async {
                                Navigator.of(context).pushNamed('BookDoctorWidget');
                              },
                              text: 'Book Appointment',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48,
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: Color(0xFFCC5500),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
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
      ),
    );
  }
}

