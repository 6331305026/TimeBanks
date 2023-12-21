import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'regsiter_info_widget.dart' show RegsiterInfoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegsiterInfoModel extends FlutterFlowModel<RegsiterInfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password_Login widget.
  FocusNode? passwordLoginFocusNode1;
  TextEditingController? passwordLoginController1;
  String? Function(BuildContext, String?)? passwordLoginController1Validator;
  // State field(s) for password_Login widget.
  FocusNode? passwordLoginFocusNode2;
  TextEditingController? passwordLoginController2;
  String? Function(BuildContext, String?)? passwordLoginController2Validator;
  // State field(s) for email_Login widget.
  FocusNode? emailLoginFocusNode1;
  TextEditingController? emailLoginController1;
  String? Function(BuildContext, String?)? emailLoginController1Validator;
  // State field(s) for email_Login widget.
  FocusNode? emailLoginFocusNode2;
  TextEditingController? emailLoginController2;
  String? Function(BuildContext, String?)? emailLoginController2Validator;
  // State field(s) for email_Login widget.
  FocusNode? emailLoginFocusNode3;
  TextEditingController? emailLoginController3;
  String? Function(BuildContext, String?)? emailLoginController3Validator;
  // State field(s) for email_Login widget.
  FocusNode? emailLoginFocusNode4;
  TextEditingController? emailLoginController4;
  String? Function(BuildContext, String?)? emailLoginController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    passwordLoginFocusNode1?.dispose();
    passwordLoginController1?.dispose();

    passwordLoginFocusNode2?.dispose();
    passwordLoginController2?.dispose();

    emailLoginFocusNode1?.dispose();
    emailLoginController1?.dispose();

    emailLoginFocusNode2?.dispose();
    emailLoginController2?.dispose();

    emailLoginFocusNode3?.dispose();
    emailLoginController3?.dispose();

    emailLoginFocusNode4?.dispose();
    emailLoginController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
