import '/flutter_flow/flutter_flow_util.dart';
import 'add_profile_picture_widget.dart' show AddProfilePictureWidget;
import 'package:flutter/material.dart';

class AddProfilePictureModel extends FlutterFlowModel<AddProfilePictureWidget> {
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
