import '/components/alert_generation/alert_generation_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_color_model.dart';
export 'add_color_model.dart';

class AddColorWidget extends StatefulWidget {
  const AddColorWidget({
    super.key,
    required this.title,
    required this.description,
    required this.category,
  });

  final String? title;
  final String? description;
  final String? category;

  @override
  State<AddColorWidget> createState() => _AddColorWidgetState();
}

class _AddColorWidgetState extends State<AddColorWidget> {
  late AddColorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddColorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Text(
                  'Choose a color scheme !',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 26.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  'Select 3 Colors below .',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        lineHeight: 1.1,
                      ),
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                borderRadius: 25.0,
                                borderWidth: 2.0,
                                buttonSize: 50.0,
                                fillColor: _model.color1,
                                icon: Icon(
                                  FFIcons.ktarget,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                                onPressed: () async {
                                  final colorPicked1Color =
                                      await showFFColorPicker(
                                    context,
                                    currentColor: _model.colorPicked1 ??=
                                        FlutterFlowTheme.of(context).primary,
                                    showRecentColors: true,
                                    allowOpacity: true,
                                    textColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    secondaryTextColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    primaryButtonBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    primaryButtonTextColor: Colors.white,
                                    primaryButtonBorderColor:
                                        Colors.transparent,
                                    displayAsBottomSheet:
                                        isMobileWidth(context),
                                  );

                                  if (colorPicked1Color != null) {
                                    safeSetState(() => _model.colorPicked1 =
                                        colorPicked1Color);
                                  }

                                  _model.color1 = _model.colorPicked1;
                                  setState(() {});
                                },
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                borderRadius: 25.0,
                                borderWidth: 2.0,
                                buttonSize: 50.0,
                                fillColor: _model.color2,
                                icon: Icon(
                                  FFIcons.ktarget,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                                onPressed: () async {
                                  final colorPicked2Color =
                                      await showFFColorPicker(
                                    context,
                                    currentColor: _model.colorPicked2 ??=
                                        FlutterFlowTheme.of(context).primary,
                                    showRecentColors: true,
                                    allowOpacity: true,
                                    textColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    secondaryTextColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    primaryButtonBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    primaryButtonTextColor: Colors.white,
                                    primaryButtonBorderColor:
                                        Colors.transparent,
                                    displayAsBottomSheet:
                                        isMobileWidth(context),
                                  );

                                  if (colorPicked2Color != null) {
                                    safeSetState(() => _model.colorPicked2 =
                                        colorPicked2Color);
                                  }

                                  _model.color2 = _model.colorPicked2;
                                  setState(() {});
                                },
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Second Color',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                borderRadius: 25.0,
                                borderWidth: 2.0,
                                buttonSize: 50.0,
                                fillColor: _model.color3,
                                icon: Icon(
                                  FFIcons.ktarget,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                                onPressed: () async {
                                  final colorPicked3Color =
                                      await showFFColorPicker(
                                    context,
                                    currentColor: _model.colorPicked3 ??=
                                        FlutterFlowTheme.of(context).primary,
                                    showRecentColors: true,
                                    allowOpacity: true,
                                    textColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    secondaryTextColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    primaryButtonBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    primaryButtonTextColor: Colors.white,
                                    primaryButtonBorderColor:
                                        Colors.transparent,
                                    displayAsBottomSheet:
                                        isMobileWidth(context),
                                  );

                                  if (colorPicked3Color != null) {
                                    safeSetState(() => _model.colorPicked3 =
                                        colorPicked3Color);
                                  }

                                  _model.color3 = _model.colorPicked3;
                                  setState(() {});
                                },
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Third Color',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 498.0,
                height: 226.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'or Choose from Templates below',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    lineHeight: 1.1,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 5
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 5
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFF006D77);
                                    _model.color2 = const Color(0xFF83C5BE);
                                    _model.color3 = const Color(0xFFEDF6F9);
                                    _model.pictureselected = 5;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010235.png',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 6
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 6
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFF064789);
                                    _model.color2 = const Color(0xFF427AA1);
                                    _model.color3 = const Color(0xFFEBF2FA);
                                    _model.pictureselected = 6;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010613.png',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 8
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 8
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFF2C6E49);
                                    _model.color2 = const Color(0xFF4C956C);
                                    _model.color3 = const Color(0xFFFEFEE3);
                                    _model.pictureselected = 8;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010452.png',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(const SizedBox(width: 8.0))
                              .addToStart(const SizedBox(width: 10.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 1
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFFFFAF87);
                                    _model.color2 = const Color(0xFFFF8E72);
                                    _model.color3 = const Color(0xFFED6A5E);
                                    _model.pictureselected = 1;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010517.png',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 2
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 2
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFFDCE0D9);
                                    _model.color2 = const Color(0xFFFBF6EF);
                                    _model.color3 = const Color(0xFFEAD7C3);
                                    _model.pictureselected = 2;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010305.png',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0),
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: _model.pictureselected == 4
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: _model.pictureselected == 4
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: 5.0,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.color1 = const Color(0xFF0B132B);
                                    _model.color2 = const Color(0xFF1C2541);
                                    _model.color3 = const Color(0xFF3A506B);
                                    _model.pictureselected = 4;
                                    setState(() {});
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Capture_dcran_2024-08-02_010354.png',
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(const SizedBox(width: 8.0))
                              .addToStart(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    HapticFeedback.lightImpact();
                    if ((_model.color1 != null) &&
                        (_model.color2 != null) &&
                        (_model.color3 != null)) {
                      context.pushNamed(
                        'submitPromptStep4',
                        queryParameters: {
                          'title': serializeParam(
                            widget.title,
                            ParamType.String,
                          ),
                          'description': serializeParam(
                            widget.description,
                            ParamType.String,
                          ),
                          'category': serializeParam(
                            widget.category,
                            ParamType.String,
                          ),
                          'color1': serializeParam(
                            _model.color1,
                            ParamType.Color,
                          ),
                          'color2': serializeParam(
                            _model.color2,
                            ParamType.Color,
                          ),
                          'color3': serializeParam(
                            _model.color3,
                            ParamType.Color,
                          ),
                        }.withoutNulls,
                      );
                    } else {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: const AlertGenerationWidget(),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    }
                  },
                  text: 'Select Colors',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 55.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    HapticFeedback.lightImpact();
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 55.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).alternate,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
