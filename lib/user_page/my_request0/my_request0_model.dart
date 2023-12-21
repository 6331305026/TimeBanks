import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_request0_widget.dart' show MyRequest0Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyRequest0Model extends FlutterFlowModel<MyRequest0Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navBarWithMiddleButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
