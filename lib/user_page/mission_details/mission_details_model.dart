import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mission_details_widget.dart' show MissionDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MissionDetailsModel extends FlutterFlowModel<MissionDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_tpname widget.
  FocusNode? txtTpnameFocusNode;
  TextEditingController? txtTpnameController;
  String? Function(BuildContext, String?)? txtTpnameControllerValidator;
  // State field(s) for txt_additional widget.
  FocusNode? txtAdditionalFocusNode;
  TextEditingController? txtAdditionalController;
  String? Function(BuildContext, String?)? txtAdditionalControllerValidator;
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtTpnameFocusNode?.dispose();
    txtTpnameController?.dispose();

    txtAdditionalFocusNode?.dispose();
    txtAdditionalController?.dispose();

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
