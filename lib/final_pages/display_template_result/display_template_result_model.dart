import '/flutter_flow/flutter_flow_util.dart';
import 'display_template_result_widget.dart' show DisplayTemplateResultWidget;
import 'package:flutter/material.dart';

class DisplayTemplateResultModel
    extends FlutterFlowModel<DisplayTemplateResultWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for folderTitle widget.
  FocusNode? folderTitleFocusNode;
  TextEditingController? folderTitleTextController;
  String? Function(BuildContext, String?)? folderTitleTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    folderTitleFocusNode?.dispose();
    folderTitleTextController?.dispose();
  }
}
