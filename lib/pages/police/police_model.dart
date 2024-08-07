import '/components/poilice/poilice_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'police_widget.dart' show PoliceWidget;
import 'package:flutter/material.dart';

class PoliceModel extends FlutterFlowModel<PoliceWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Poilice component.
  late PoiliceModel poiliceModel;

  @override
  void initState(BuildContext context) {
    poiliceModel = createModel(context, () => PoiliceModel());
  }

  @override
  void dispose() {
    poiliceModel.dispose();
  }
}
