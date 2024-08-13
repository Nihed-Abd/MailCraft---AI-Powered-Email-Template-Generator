import '/components/poilice/poilice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'police_widget.dart' show PoliceWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
