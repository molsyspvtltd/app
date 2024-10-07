import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'dart:math';
import 'dart:ui';
import 'package:dnalyst/widgets/fitcarereport/digestive_health_widget.dart' show DigestiveHealthWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DigestiveHealthModel extends FlutterFlowModel<DigestiveHealthWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
