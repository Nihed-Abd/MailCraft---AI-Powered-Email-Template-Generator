import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'see_email_template_model.dart';
export 'see_email_template_model.dart';

class SeeEmailTemplateWidget extends StatefulWidget {
  const SeeEmailTemplateWidget({
    super.key,
    required this.code,
  });

  final String? code;

  @override
  State<SeeEmailTemplateWidget> createState() => _SeeEmailTemplateWidgetState();
}

class _SeeEmailTemplateWidgetState extends State<SeeEmailTemplateWidget> {
  late SeeEmailTemplateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeeEmailTemplateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 359.0,
            height: 554.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: FlutterFlowWebView(
              content: widget.code!,
              height: 554.0,
              verticalScroll: false,
              horizontalScroll: false,
              html: true,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.97, -0.96),
          child: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primaryText,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).primary,
            icon: Icon(
              FFIcons.kcancel,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
