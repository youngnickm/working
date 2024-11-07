import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'control_widget.dart' show ControlWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ControlModel extends FlutterFlowModel<ControlWidget> {
  ///  Local state fields for this page.

  int? currentRssi;

  String? receivedValue;

  bool showTextLeft = true;

  bool showTextRight = true;

  bool showTextBack = true;

  bool showTextForward = true;

  bool showTextStop = true;

  ///  State fields for stateful widgets in this page.

  InstantTimer? rssiUpdateTimer;
  // Stores action output result for [Custom Action - getRssi] action in control widget.
  int? updatedRssi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rssiUpdateTimer?.cancel();
  }
}
