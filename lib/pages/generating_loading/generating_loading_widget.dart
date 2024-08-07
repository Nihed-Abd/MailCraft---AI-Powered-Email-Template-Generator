import '/backend/gemini/gemini.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'generating_loading_model.dart';
export 'generating_loading_model.dart';

class GeneratingLoadingWidget extends StatefulWidget {
  const GeneratingLoadingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.imagepath,
    required this.category,
    required this.image,
  });

  final String? title;
  final String? description;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final String? imagepath;
  final String? category;
  final String? image;

  @override
  State<GeneratingLoadingWidget> createState() =>
      _GeneratingLoadingWidgetState();
}

class _GeneratingLoadingWidgetState extends State<GeneratingLoadingWidget> {
  late GeneratingLoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneratingLoadingModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await geminiGenerateText(
        context,
        '\"Use this prompt: \'${widget.description}\' and respond only with HTML file code for an animated email web page in the \'${widget.category}\' category containing this title: \'${widget.title}\', this image : \'${widget.image}\' (or \'delete image\' if \'imagepath\' is not without image ), and these colors: \'${functions.colorToString(widget.color1)}\', \'${functions.colorToString(widget.color2)}\', \'${functions.colorToString(widget.color3)}\'.\"response just with html code including css and icons and images neeeded to make beatifull email to send it like beefree.io emails and make sure to adjust image size to be fixed in the middle  as a logo and the background always make it animated ( you can use gif images ) ',
      ).then((generatedText) {
        safeSetState(() => _model.response = generatedText);
      });

      await Future.delayed(const Duration(milliseconds: 10000));
      Navigator.pop(context);

      context.goNamed(
        'DisplayTemplateResult',
        queryParameters: {
          'code': serializeParam(
            _model.response,
            ParamType.String,
          ),
          'title': serializeParam(
            widget.title,
            ParamType.String,
          ),
          'description': serializeParam(
            widget.description,
            ParamType.String,
          ),
          'color1': serializeParam(
            widget.color1,
            ParamType.Color,
          ),
          'color2': serializeParam(
            widget.color2,
            ParamType.Color,
          ),
          'color3': serializeParam(
            widget.color3,
            ParamType.Color,
          ),
          'image': serializeParam(
            widget.imagepath,
            ParamType.String,
          ),
          'category': serializeParam(
            widget.category,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
            child: Container(
              width: 100.0,
              height: 505.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Animation_-_1722607027993.gif',
                              width: 89.0,
                              height: 76.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Animation_-_1722607266765.gif',
                        width: 172.0,
                        height: 76.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Generating ..',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Your template will be ready  \nin a few seconds ..',
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.loadingModel,
                        updateCallback: () => setState(() {}),
                        child: const LoadingWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}