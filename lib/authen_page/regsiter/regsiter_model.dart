import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'regsiter_widget.dart' show RegsiterWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegsiterModel extends FlutterFlowModel<RegsiterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_Signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for password_Signup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)? passwordSignupControllerValidator;
  // State field(s) for passwordcf_Signup widget.
  FocusNode? passwordcfSignupFocusNode;
  TextEditingController? passwordcfSignupController;
  late bool passwordcfSignupVisibility;
  String? Function(BuildContext, String?)? passwordcfSignupControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordSignupVisibility = false;
    passwordcfSignupVisibility = false;
  }

  void dispose() {
    emailSignupFocusNode?.dispose();
    emailSignupController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupController?.dispose();

    passwordcfSignupFocusNode?.dispose();
    passwordcfSignupController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
