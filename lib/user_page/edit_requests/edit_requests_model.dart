import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_requests_widget.dart' show EditRequestsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EditRequestsModel extends FlutterFlowModel<EditRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt widget.
  FocusNode? txtFocusNode1;
  TextEditingController? txtController1;
  String? Function(BuildContext, String?)? txtController1Validator;
  // State field(s) for txt_additional widget.
  FocusNode? txtAdditionalFocusNode;
  TextEditingController? txtAdditionalController;
  String? Function(BuildContext, String?)? txtAdditionalControllerValidator;
  // State field(s) for txt_location widget.
  FocusNode? txtLocationFocusNode;
  TextEditingController? txtLocationController;
  String? Function(BuildContext, String?)? txtLocationControllerValidator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode2;
  TextEditingController? txtController2;
  String? Function(BuildContext, String?)? txtController2Validator;
  // State field(s) for txt widget.
  FocusNode? txtFocusNode3;
  TextEditingController? txtController3;
  String? Function(BuildContext, String?)? txtController3Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtFocusNode1?.dispose();
    txtController1?.dispose();

    txtAdditionalFocusNode?.dispose();
    txtAdditionalController?.dispose();

    txtLocationFocusNode?.dispose();
    txtLocationController?.dispose();

    txtFocusNode2?.dispose();
    txtController2?.dispose();

    txtFocusNode3?.dispose();
    txtController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
