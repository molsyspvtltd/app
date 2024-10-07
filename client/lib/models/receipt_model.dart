import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'package:dnalyst/widgets/receipt_widget.dart' show ReceiptWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReceiptModel extends FlutterFlowModel<ReceiptWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
