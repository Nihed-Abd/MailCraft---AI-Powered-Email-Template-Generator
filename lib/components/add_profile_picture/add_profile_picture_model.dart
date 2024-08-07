import '/flutter_flow/flutter_flow_util.dart';
import 'add_profile_picture_widget.dart' show AddProfilePictureWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddProfilePictureModel extends FlutterFlowModel<AddProfilePictureWidget> {
  ///  Local state fields for this component.

  Color? color1 = const Color(0xff293d3e);

  Color? color2 = const Color(0xff293d3e);

  Color? color3 = const Color(0xff293d3e);

  int? pictureselected;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
