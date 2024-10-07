import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:dnalyst/models/bookings_model/book_doctor_model.dart';

import '../slotbooked_widget.dart';
export 'package:dnalyst/models/bookings_model/book_doctor_model.dart';

class BookDoctorWidget extends StatefulWidget {
  const BookDoctorWidget({super.key});

  @override
  State<BookDoctorWidget> createState() => _BookDoctorWidgetState();
}

class _BookDoctorWidgetState extends State<BookDoctorWidget> {
  late BookDoctorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookDoctorModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
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
          'Book Doctor',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/bookdoctor.jpg',
                  width: MediaQuery.sizeOf(context).width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Text(
                      'Book Doctor',
                      style:
                      FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 24,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Imagine a “Doctor” as a specialist who helps make your manuscript shine. Just like how a personal coach might refine your routine for better results, a Book Doctor fine-tunes your writing to ensure it’s clear, engaging, and polished.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Professional Quality | Personalized Attention | Thorough Review | Confidential Handling',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Divider(
                    height: 32,
                    thickness: 1,
                    color: Color(0xFFDBE2E7),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                child: FFButtonWidget(
                  onPressed: () async {
                    final _datePickedDate = await showDatePicker(
                      context: context,
                      initialDate: getCurrentTimestamp,
                      firstDate: getCurrentTimestamp,
                      lastDate: DateTime(2050),
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: Color(0xFFCC5500),
                            hintColor: FlutterFlowTheme.of(context).info,
                            colorScheme: ColorScheme.light(
                              primary: Color(0xFFCC5500),
                            ),
                            buttonTheme: ButtonThemeData(
                              textTheme: ButtonTextTheme.primary,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );

                    TimeOfDay? _datePickedTime;
                    if (_datePickedDate != null) {
                      _datePickedTime = await showTimePicker(
                        context: context,
                        initialTime:
                        TimeOfDay.fromDateTime(getCurrentTimestamp),
                        builder: (context, child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              primaryColor: Color(0xFFCC5500),
                              hintColor: FlutterFlowTheme.of(context).info,
                              colorScheme: ColorScheme.light(
                                primary: Color(0xFFCC5500),
                              ),
                              buttonTheme: ButtonThemeData(
                                textTheme: ButtonTextTheme.primary,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                    }

                    if (_datePickedDate != null && _datePickedTime != null) {
                      setState(() {
                        _model.datePicked = DateTime(
                          _datePickedDate.year,
                          _datePickedDate.month,
                          _datePickedDate.day,
                          _datePickedTime!.hour,
                          _datePickedTime.minute,
                        );
                      });
                    }
                  },
                  text: 'Reserve Spot',
                  options: FFButtonOptions(
                    width: 160,
                    height: 45,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFFCC5500),
                    textStyle:
                    FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Text(
                  valueOrDefault<String>(
                    dateTimeFormat('d/M h:mm a', _model.datePicked),
                    'Date and Time',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: FFButtonWidget(
                  onPressed: () async {
                    // Navigator.of(context).pushNamed('SlotbookedWidget');
                    if(_model.datePicked==null){

                      //date not picked message
                      print('pick a date ');
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Pick a Date')));

                    }
                    else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SlotbookedWidget(dateTime: _model.datePicked!,),));
                    }
                  },
                  text: 'Confirm',
                  options: FFButtonOptions(
                    width: 260,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFFCC5500),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
