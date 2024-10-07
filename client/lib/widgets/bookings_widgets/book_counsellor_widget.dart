// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
//
// import 'package:dnalyst/models/bookings_model/book_counsellor_model.dart';
// export 'package:dnalyst/models/bookings_model/book_counsellor_model.dart';
//
// class BookCounsellorWidget extends StatefulWidget {
//   const BookCounsellorWidget({super.key});
//
//   @override
//   State<BookCounsellorWidget> createState() => _BookCounsellorWidgetState();
// }
//
// class _BookCounsellorWidgetState extends State<BookCounsellorWidget> {
//   late BookCounsellorModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => BookCounsellorModel());
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color(0xFFCC5500),
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
//         title: Text(
//           'Book Counsellor',
//           style: FlutterFlowTheme.of(context).headlineMedium.override(
//             fontFamily: 'Outfit',
//             color: Colors.white,
//             fontSize: 24,
//             letterSpacing: 0,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(16),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   'https://images.unsplash.com/photo-1604313477128-4e121c72c5ab?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//                   width: MediaQuery.sizeOf(context).width,
//                   height: 230,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
//                     child: Text(
//                       'Book Counsellor',
//                       style: FlutterFlowTheme.of(context).headlineMedium.override(
//                         fontFamily: 'Outfit',
//                         color: Color(0xFF0F1113),
//                         fontSize: 24,
//                         letterSpacing: 0,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'A \"Book Counsellor\" helps authors refine their manuscripts by offering expert guidance throughout the editing process. They provide personalized feedback to enhance the clarity, structure, and overall quality of your writing, ensuring your manuscript meets industry standards. Their professional approach and confidentiality ensure that your creative ideas are handled with respect and privacy, making the revision process smooth and efficient.',
//                     textAlign: TextAlign.justify,
//                     style: FlutterFlowTheme.of(context).labelLarge.override(
//                       fontFamily: 'Outfit',
//                       color: Color(0xFF57636C),
//                       fontSize: 16,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
//                     child: Text(
//                       'Expert Guidance | Streamlined Process | Comprehensive Review',
//                       style: FlutterFlowTheme.of(context).labelMedium.override(
//                         fontFamily: 'Outfit',
//                         color: Color(0xFF57636C),
//                         fontSize: 14,
//                         letterSpacing: 0,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     height: 32,
//                     thickness: 1,
//                     color: Color(0xFFDBE2E7),
//                   ),
//                 ],
//               ),
//             ),
//             // Generated code for this Row Widget...
//             Align(
//               alignment: AlignmentDirectional(0, 0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   FlutterFlowRadioButton(
//                     options: ['Offline', 'Online'].toList(),
//                     onChanged: (val) => setState(() {}),
//                     controller: _model.radioButtonValueController ??=
//                         FormFieldController<String>(null),
//                     optionHeight: 32,
//                     textStyle: FlutterFlowTheme.of(context).labelMedium.override(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0,
//                     ),
//                     selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
//                       fontFamily: 'Readex Pro',
//                       letterSpacing: 0,
//                     ),
//                     buttonPosition: RadioButtonPosition.left,
//                     direction: Axis.vertical,
//                     radioButtonColor: Color(0xFFCC5500),
//                     inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
//                     toggleable: false,
//                     horizontalAlignment: WrapAlignment.start,
//                     verticalAlignment: WrapCrossAlignment.start,
//                   ),
//                 ],
//               ),
//             ),
//
//             Align(
//               alignment: AlignmentDirectional(0, 0),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
//                 child: FFButtonWidget(
//                   onPressed: () async {
//                     final _datePickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime.now(),
//                       lastDate: DateTime(2050),
//                       builder: (context, child) {
//                         return Theme(
//                           data: ThemeData.light().copyWith(
//                             primaryColor: Color(0xFFCC5500),
//                             hintColor: FlutterFlowTheme.of(context).info,
//                             colorScheme: ColorScheme.light(
//                               primary: Color(0xFFCC5500),
//                             ),
//                             buttonTheme: ButtonThemeData(
//                               textTheme: ButtonTextTheme.primary,
//                             ),
//                           ),
//                           child: child!,
//                         );
//                       },
//                     );
//
//                     TimeOfDay? _datePickedTime;
//                     if (_datePickedDate != null) {
//                       _datePickedTime = await showTimePicker(
//                         context: context,
//                         initialTime: TimeOfDay.fromDateTime(DateTime.now()),
//                         builder: (context, child) {
//                           return Theme(
//                             data: ThemeData.light().copyWith(
//                               primaryColor: Color(0xFFCC5500),
//                               hintColor: FlutterFlowTheme.of(context).info,
//                               colorScheme: ColorScheme.light(
//                                 primary: Color(0xFFCC5500),
//                               ),
//                               buttonTheme: ButtonThemeData(
//                                 textTheme: ButtonTextTheme.primary,
//                               ),
//                             ),
//                             child: child!,
//                           );
//                         },
//                       );
//                     }
//
//                     if (_datePickedDate != null && _datePickedTime != null) {
//                       setState(() {
//                         _model.datePicked = DateTime(
//                           _datePickedDate.year,
//                           _datePickedDate.month,
//                           _datePickedDate.day,
//                           _datePickedTime!.hour,
//                           _datePickedTime.minute,
//                         );
//                       });
//                     }
//                   },
//                   text: 'Reserve Spot',
//                   icon: Icon(
//                     Icons.access_time_sharp,
//                     size: 19,
//                   ),
//                   options: FFButtonOptions(
//                     width: 160,
//                     height: 45,
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                     iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                     color: Color(0xFFCC5500),
//                     textStyle:
//                     FlutterFlowTheme.of(context).headlineSmall.override(
//                       fontFamily: 'Outfit',
//                       color: Colors.white,
//                       fontSize: 18,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     elevation: 3,
//                     borderSide: BorderSide(
//                       color: Colors.transparent,
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional(0, 0),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
//                 child: Text(
//                   valueOrDefault<String>(
//                     dateTimeFormat('d/M h:mm a', _model.datePicked),
//                     'Date and Time',
//                   ),
//                   style: FlutterFlowTheme.of(context).bodyMedium.override(
//                     fontFamily: 'Readex Pro',
//                     color: FlutterFlowTheme.of(context).secondaryText,
//                     fontSize: 16,
//                     letterSpacing: 0,
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional(0, 0),
//               child: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
//                 child: FFButtonWidget(
//                   onPressed: () async {
//                     Navigator.of(context).pushNamed('Slotbooked');
//                   },
//                   text: 'Confirm',
//                   options: FFButtonOptions(
//                     width: 260,
//                     height: 50,
//                     padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
//                     iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                     color: Color(0xFFCC5500),
//                     textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                       fontFamily: 'Readex Pro',
//                       color: Colors.white,
//                       fontSize: 22,
//                       letterSpacing: 0,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     elevation: 3,
//                     borderSide: BorderSide(
//                       color: Colors.transparent,
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.circular(24),
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

import 'package:dnalyst/widgets/slotbooked_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:dnalyst/models/bookings_model/book_counsellor_model.dart';
export 'package:dnalyst/models/bookings_model/book_counsellor_model.dart';

class BookCounsellorWidget extends StatefulWidget {
  const BookCounsellorWidget({super.key});

  @override
  State<BookCounsellorWidget> createState() => _BookCounsellorWidgetState();
}

class _BookCounsellorWidgetState extends State<BookCounsellorWidget> {
  late BookCounsellorModel _model;
  String? _meetingType;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookCounsellorModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> bookCounselor() async {
    final userId = 4; // Replace with actual userId
    final counselorId = 2; // Replace with actual counselorId
    final dateTime = _model.datePicked;
    final meetingType = _meetingType;
    final place = meetingType == 'Offline' ? 'Your specified place' : null;

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8080/bookings/book'),
      body: {
        'userId': userId.toString(),
        'counselorId': counselorId.toString(),
        'meetingType': meetingType,
        'dateTime': dateTime?.toIso8601String(),
        'place': place,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      // Handle the response as needed
      Navigator.of(context).pushNamed('Slotbooked');
    } else {
      // Handle the error as needed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking failed. Please try again.')),
      );
    }
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
          'Book Counsellor',
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
                  'assets/images/bookcounsiler.jpg',
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
                      'Book Counsellor',
                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 24,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'A "Book Counsellor" helps authors refine their manuscripts by offering expert guidance throughout the editing process. They provide personalized feedback to enhance the clarity, structure, and overall quality of your writing, ensuring your manuscript meets industry standards. Their professional approach and confidentiality ensure that your creative ideas are handled with respect and privacy, making the revision process smooth and efficient.',
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
                      'Expert Guidance | Streamlined Process | Comprehensive Review',
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
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowRadioButton(
                    options: ['Offline', 'Online'].toList(),
                    onChanged: (val) {
                      setState(() {
                        _meetingType = val!;
                      });
                    },
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(null),
                    optionHeight: 32,
                    textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                    selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0,
                    ),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: Color(0xFFCC5500),
                    inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
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
                    if(_meetingType==null){
                      //pick online or offline
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Select a mode of consultation')));

                    }
                    else{
                      final _datePickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
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
                          initialTime: TimeOfDay.fromDateTime(DateTime.now()),
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
                    }
                  },
                  text: 'Reserve Spot',
                  icon: Icon(
                    Icons.access_time_sharp,
                    size: 19,
                  ),
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
                    print(_meetingType);
                  //  Navigator.of(context).pushNamed('SlotbookedWidget');

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

