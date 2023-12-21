import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_requests_widget.dart' show CreateRequestsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateRequestsModel extends FlutterFlowModel<CreateRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_topicname widget.
  FocusNode? txtTopicnameFocusNode;
  TextEditingController? txtTopicnameController;
  String? Function(BuildContext, String?)? txtTopicnameControllerValidator;
  // State field(s) for txt_addexplain widget.
  FocusNode? txtAddexplainFocusNode;
  TextEditingController? txtAddexplainController;
  String? Function(BuildContext, String?)? txtAddexplainControllerValidator;
  // State field(s) for txt_location widget.
  FocusNode? txtLocationFocusNode;
  TextEditingController? txtLocationController;
  String? Function(BuildContext, String?)? txtLocationControllerValidator;
  // State field(s) for txt_date widget.
  FocusNode? txtDateFocusNode;
  TextEditingController? txtDateController;
  String? Function(BuildContext, String?)? txtDateControllerValidator;
  // State field(s) for txt_phone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneController;
  String? Function(BuildContext, String?)? txtPhoneControllerValidator;
  // State field(s) for CountTC widget.
  int? countTCValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtTopicnameFocusNode?.dispose();
    txtTopicnameController?.dispose();

    txtAddexplainFocusNode?.dispose();
    txtAddexplainController?.dispose();

    txtLocationFocusNode?.dispose();
    txtLocationController?.dispose();

    txtDateFocusNode?.dispose();
    txtDateController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
