import 'package:flutterflow_ui/flutterflow_ui.dart';

import 'package:dnalyst/widgets/notificationsettings_widget.dart' show NotificationsettingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsettingsModel
    extends FlutterFlowModel<NotificationsettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
