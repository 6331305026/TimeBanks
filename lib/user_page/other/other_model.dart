import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'other_widget.dart' show OtherWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OtherModel extends FlutterFlowModel<OtherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
