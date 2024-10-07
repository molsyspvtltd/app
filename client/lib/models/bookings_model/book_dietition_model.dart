import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_dietition_widget.dart' show BookDietitionWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookDietitionModel extends FlutterFlowModel<BookDietitionWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
