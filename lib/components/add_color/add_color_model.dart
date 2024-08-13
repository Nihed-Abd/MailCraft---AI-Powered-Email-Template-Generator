import '/components/alert_generation/alert_generation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_color_widget.dart' show AddColorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddColorModel extends FlutterFlowModel<AddColorWidget> {
  ///  Local state fields for this component.

  Color? color1 = Color(4280892734);

  Color? color2 = Color(4280892734);

  Color? color3 = Color(4280892734);

  int? pictureselected;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  Color? colorPicked1;
  Color? colorPicked2;
  Color? colorPicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
