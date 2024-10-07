// import 'package:flutterflow_ui/flutterflow_ui.dart';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import 'package:dnalyst/models/notificationscreen_model.dart';
// export 'package:dnalyst/models/notificationscreen_model.dart';
//
// class NotificationscreenWidget extends StatefulWidget {
//   const NotificationscreenWidget({super.key});
//
//   @override
//   State<NotificationscreenWidget> createState() =>
//       _NotificationscreenWidgetState();
// }
//
// class _NotificationscreenWidgetState extends State<NotificationscreenWidget> {
//   late NotificationscreenModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => NotificationscreenModel());
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
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
//             'Notification',
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
//         body: ListView(
//           padding: EdgeInsets.zero,
//           scrollDirection: Axis.vertical,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).secondaryBackground,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 0,
//                       color: Color(0xFFE0E3E7),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(0),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFCC5500),
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Your Report arrived ',
//                             style:
//                             FlutterFlowTheme.of(context).bodyLarge.override(
//                               fontFamily: 'Readex Pro',
//                               letterSpacing: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Text(
//                           'Mar 8, 2024',
//                           style:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).secondaryBackground,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 0,
//                       color: Color(0xFFE0E3E7),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(0),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFCC5500),
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Check-in evaluated',
//                             style:
//                             FlutterFlowTheme.of(context).bodyLarge.override(
//                               fontFamily: 'Readex Pro',
//                               letterSpacing: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Text(
//                           'Mar 8, 2024',
//                           style:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).secondaryBackground,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 0,
//                       color: Color(0xFFE0E3E7),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(0),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFCC5500),
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Check-in evaluated',
//                             style:
//                             FlutterFlowTheme.of(context).bodyLarge.override(
//                               fontFamily: 'Readex Pro',
//                               letterSpacing: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Text(
//                           'Mar 8, 2024',
//                           style:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).primaryBackground,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 0,
//                       color: Color(0xFFE0E3E7),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(0),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: FlutterFlowTheme.of(context).alternate,
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'New Event added to your calendar',
//                             style: FlutterFlowTheme.of(context)
//                                 .labelLarge
//                                 .override(
//                               fontFamily: 'Readex Pro',
//                               letterSpacing: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Text(
//                           'Mar 8, 2024',
//                           style:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).primaryBackground,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 0,
//                       color: Color(0xFFE0E3E7),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(0),
//                   shape: BoxShape.rectangle,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 4,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: FlutterFlowTheme.of(context).alternate,
//                           borderRadius: BorderRadius.circular(2),
//                         ),
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                           child: Text(
//                             'Profile Modified',
//                             style: FlutterFlowTheme.of(context)
//                                 .labelLarge
//                                 .override(
//                               fontFamily: 'Readex Pro',
//                               letterSpacing: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Text(
//                           'Mar 8, 2024',
//                           style:
//                           FlutterFlowTheme.of(context).labelMedium.override(
//                             fontFamily: 'Readex Pro',
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
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
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:provider/provider.dart';


import 'package:dnalyst/services/notification.dart'; // Import your service
import 'package:dnalyst/models/notificationscreen_model.dart'; // Adjust the path if needed

class NotificationscreenWidget extends StatefulWidget {
  const NotificationscreenWidget({super.key});

  @override
  State<NotificationscreenWidget> createState() =>
      _NotificationscreenWidgetState();
}

class _NotificationscreenWidgetState extends State<NotificationscreenWidget> {
  late Future<List<DnaNotification>> _notificationsFuture;
  List<DnaNotification> _notifications = []; // Store notifications

  @override
  void initState() {
    super.initState();
    _loadNotifications();
  }

  Future<void> _loadNotifications() async {
    final notifications = await fetchNotifications();
    setState(() {
      _notifications = notifications;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Notification',
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
        body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: _notifications.length,
          itemBuilder: (context, index) {
            final notification = _notifications[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  notification.seen = true; // Mark as seen
                });
                // Optionally, you could also save this status to a database or local storage.
              },
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Color(0xFFE0E3E7),
                        offset: Offset(0.0, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 4,
                          height: 50,
                          decoration: BoxDecoration(
                            color: notification.seen ? Colors.grey : Color(0xFFCC5500), // Change color if seen
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              notification.title,
                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                                color: notification.seen ? Colors.grey : Colors.black, // Change text color if seen
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            notification.date,
                            style: FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0,
                              color: notification.seen ? Colors.grey : Colors.black, // Change text color if seen
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
