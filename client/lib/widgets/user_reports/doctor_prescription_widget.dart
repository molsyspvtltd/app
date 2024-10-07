// import 'package:flutterflow_ui/flutterflow_ui.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// import '../../models/User_reports/doctor_prescription_model.dart';
// export 'package:dnalyst/models/User_reports/doctor_prescription_model.dart';
//
// class DoctorPrescriptionWidget extends StatefulWidget {
//   const DoctorPrescriptionWidget({super.key});
//
//   @override
//   State<DoctorPrescriptionWidget> createState() =>
//       _DoctorPrescriptionWidgetState();
// }
//
// class _DoctorPrescriptionWidgetState extends State<DoctorPrescriptionWidget> {
//   late DoctorPrescriptionModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => DoctorPrescriptionModel());
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
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Color(0xFFF1F4F8),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFCC5500),
//         automaticallyImplyLeading: false,
//         leading: FlutterFlowIconButton(
//           borderColor: Colors.transparent,
//           borderRadius: 30,
//           buttonSize: 46,
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
//           'Doctor Prescription',
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
//         elevation: 0,
//       ),
//       body: SafeArea(
//         top: true,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 3,
//                       color: Color(0x39000000),
//                       offset: Offset(
//                         0.0,
//                         1,
//                       ),
//                     )
//                   ],
//                 ),
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(12, 14, 12, 16),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                             child: Text(
//                               '4',
//                               style: FlutterFlowTheme.of(context)
//                                   .displaySmall
//                                   .override(
//                                 fontFamily: 'Outfit',
//                                 color: Color(0xFF14181B),
//                                 fontSize: 28,
//                                 letterSpacing: 0,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           Text(
//                             'Prescriptions',
//                             style: FlutterFlowTheme.of(context)
//                                 .labelMedium
//                                 .override(
//                               fontFamily: 'Plus Jakarta Sans',
//                               color: Color(0xFF57636C),
//                               fontSize: 14,
//                               letterSpacing: 0,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                     child: Container(
//                       width: MediaQuery.sizeOf(context).width * 0.96,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 4,
//                             color: Color(0x33000000),
//                             offset: Offset(
//                               0.0,
//                               2,
//                             ),
//                           )
//                         ],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(2),
//                         child: SingleChildScrollView(
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 12, 16, 0),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Prescription 1',
//                                           style: FlutterFlowTheme.of(context)
//                                               .titleLarge
//                                               .override(
//                                             fontFamily: 'Outfit',
//                                             color: Color(0xFF14181B),
//                                             fontSize: 22,
//                                             letterSpacing: 0,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Card(
//                                       clipBehavior: Clip.antiAliasWithSaveLayer,
//                                       color: Color(0xB4CC5500),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(40),
//                                       ),
//                                       child: Padding(
//                                         padding: EdgeInsets.all(2),
//                                         child: InkWell(
//                                           splashColor: Colors.transparent,
//                                           focusColor: Colors.transparent,
//                                           hoverColor: Colors.transparent,
//                                           highlightColor: Colors.transparent,
//                                           onTap: () async {
//                                             Navigator.of(context).pushNamed('Doctor');
//                                           },
//                                           child: Container(
//                                             width: 50,
//                                             height: 50,
//                                             clipBehavior: Clip.antiAlias,
//                                             decoration: BoxDecoration(
//                                               shape: BoxShape.circle,
//                                             ),
//                                             child: Image.asset(
//                                               'assets/images/profilescreen.jpeg',
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     16, 4, 16, 12),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Expanded(
//                                       child: Text(
//                                         'At the initial consultation on 12/01/2024, Anu received their first prescription tailored by [Doctor\'s Name]. The prescription delineates the medications, specifying dosage, frequency, and duration. It underscores the importance of adherence to the regimen and encourages prompt communication regarding any adverse reactions.',
//                                         textAlign: TextAlign.justify,
//                                         style: FlutterFlowTheme.of(context)
//                                             .labelMedium
//                                             .override(
//                                           fontFamily: 'Plus Jakarta Sans',
//                                           color: Color(0xFF57636C),
//                                           fontSize: 14,
//                                           letterSpacing: 0,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 5, 0, 14),
//                                 child: FFButtonWidget(
//                                   onPressed: () {
//                                     print('Button pressed ...');
//                                   },
//                                   text: 'Download Prescription',
//                                   icon: Icon(
//                                     Icons.download_rounded,
//                                     size: 15,
//                                   ),
//                                   options: FFButtonOptions(
//                                     height: 40,
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         24, 0, 24, 0),
//                                     iconPadding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 0),
//                                     color: Color(0xFFCC5500),
//                                     textStyle: FlutterFlowTheme.of(context)
//                                         .titleSmall
//                                         .override(
//                                       fontFamily: 'Readex Pro',
//                                       color: Colors.white,
//                                       fontSize: 13,
//                                       letterSpacing: 0,
//                                     ),
//                                     elevation: 5,
//                                     borderSide: BorderSide(
//                                       color: Color(0xFFCC5500),
//                                       width: 1,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../models/User_reports/doctor_prescription_model.dart';
import '../../services/Prescription.dart';

class DoctorPrescriptionWidget extends StatefulWidget {
  final List<Prescription> prescriptions;

  const DoctorPrescriptionWidget({
    super.key,
    required this.prescriptions,
  });

  @override
  State<DoctorPrescriptionWidget> createState() =>
      _DoctorPrescriptionWidgetState();
}

class _DoctorPrescriptionWidgetState extends State<DoctorPrescriptionWidget> {
  late DoctorPrescriptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoctorPrescriptionModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _generatePdf(Prescription prescription) async {
    final pdf = pw.Document();

    // Load the image from the assets
    final imageData = await rootBundle.load(prescription.imageUrl);
    final image = pw.MemoryImage(imageData.buffer.asUint8List());

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                prescription.title,
                style: pw.TextStyle(
                  fontSize: 24,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                "Doctor: ${prescription.doctorName}",
                style: pw.TextStyle(fontSize: 18),
              ),
              pw.Text(
                "Date: ${prescription.date}",
                style: pw.TextStyle(fontSize: 18),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                prescription.description,
                style: pw.TextStyle(fontSize: 16),
              ),
              pw.SizedBox(height: 20),
              pw.Image(image), // Use the loaded image here
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/${prescription.title}.pdf");
    await file.writeAsBytes(await pdf.save());

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Downloaded ${prescription.title}.pdf'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFCC5500),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Doctor Prescription',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Container(
              color: Colors.white, // White background for the container
              padding: const EdgeInsetsDirectional.fromSTEB(12, 14, 12, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                        child: Text(
                          '${widget.prescriptions.length}',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                            fontFamily: 'Outfit',
                            color: const Color(0xFF14181B),
                            fontSize: 28,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'Prescriptions',
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF57636C),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: widget.prescriptions.length,
                itemBuilder: (context, index) {
                  final prescription = widget.prescriptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 12, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        prescription.title,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                          fontFamily: 'Outfit',
                                          color: const Color(0xFF14181B),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        prescription.date,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          'Plus Jakarta Sans',
                                          color: const Color(0xFF57636C),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: const Color(0xB4CC5500),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          Navigator.of(context)
                                              .pushNamed('Doctor');
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            prescription.imageUrl,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 4, 16, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      prescription.description,
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        fontFamily:
                                        'Plus Jakarta Sans',
                                        color: const Color(0xFF57636C),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 14),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await _generatePdf(prescription);
                                },
                                text: 'Download Prescription',
                                icon: const Icon(
                                  Icons.download_rounded,
                                  size: 15,
                                ),
                                options: FFButtonOptions(
                                  height: 40,
                                  padding:
                                  const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  color: const Color(0xFFCC5500),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                  elevation: 5,
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCC5500),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

