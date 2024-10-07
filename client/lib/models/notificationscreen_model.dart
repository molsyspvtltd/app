import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/notificationscreen_widget.dart' show NotificationscreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationscreenModel
    extends FlutterFlowModel<NotificationscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
