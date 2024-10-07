import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/bookings_widgets/book_counsellor_widget.dart' show BookCounsellorWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookCounsellorModel extends FlutterFlowModel<BookCounsellorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}


