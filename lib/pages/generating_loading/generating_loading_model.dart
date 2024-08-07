import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'generating_loading_widget.dart' show GeneratingLoadingWidget;
import 'package:flutter/material.dart';

class GeneratingLoadingModel extends FlutterFlowModel<GeneratingLoadingWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Gemini - Generate Text] action in GeneratingLoading widget.
  String? response;
  // Model for loading component.
  late LoadingModel loadingModel;

  @override
  void initState(BuildContext context) {
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    loadingModel.dispose();
  }
}
