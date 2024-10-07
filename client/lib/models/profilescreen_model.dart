import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:dnalyst/widgets/profilescreen_widget.dart' show ProfilescreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilescreenModel extends FlutterFlowModel<ProfilescreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
