import '/flutter_flow/flutter_flow_util.dart';
import 'add_color_widget.dart' show AddColorWidget;
import 'package:flutter/material.dart';

class AddColorModel extends FlutterFlowModel<AddColorWidget> {
  ///  Local state fields for this component.

  Color? color1 = const Color(0xff293d3e);

  Color? color2 = const Color(0xff293d3e);

  Color? color3 = const Color(0xff293d3e);

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
