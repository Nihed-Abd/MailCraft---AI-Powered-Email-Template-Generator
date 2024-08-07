import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_prompt_step2_widget.dart' show SubmitPromptStep2Widget;
import 'package:flutter/material.dart';

class SubmitPromptStep2Model extends FlutterFlowModel<SubmitPromptStep2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
