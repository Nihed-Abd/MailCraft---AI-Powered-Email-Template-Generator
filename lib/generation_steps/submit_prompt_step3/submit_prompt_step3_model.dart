import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_prompt_step3_widget.dart' show SubmitPromptStep3Widget;
import 'package:flutter/material.dart';

class SubmitPromptStep3Model extends FlutterFlowModel<SubmitPromptStep3Widget> {
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
