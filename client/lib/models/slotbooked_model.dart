import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'package:dnalyst/widgets/slotbooked_widget.dart' show SlotbookedWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SlotbookedModel extends FlutterFlowModel<SlotbookedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
