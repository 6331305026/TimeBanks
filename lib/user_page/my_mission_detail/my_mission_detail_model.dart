import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_mission_detail_widget.dart' show MyMissionDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyMissionDetailModel extends FlutterFlowModel<MyMissionDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt widget.
  FocusNode? txtFocusNode1;
  TextEditingController? txtController1;
  String? Function(BuildContext, String?)? txtController1Validator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode2;
  TextEditingController? txtController2;
  String? Function(BuildContext, String?)? txtController2Validator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode3;
  TextEditingController? txtController3;
  String? Function(BuildContext, String?)? txtController3Validator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode4;
  TextEditingController? txtController4;
  String? Function(BuildContext, String?)? txtController4Validator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode5;
  TextEditingController? txtController5;
  String? Function(BuildContext, String?)? txtController5Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtFocusNode1?.dispose();
    txtController1?.dispose();

    txtFocusNode2?.dispose();
    txtController2?.dispose();

    txtFocusNode3?.dispose();
    txtController3?.dispose();

    txtFocusNode4?.dispose();
    txtController4?.dispose();

    txtFocusNode5?.dispose();
    txtController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
