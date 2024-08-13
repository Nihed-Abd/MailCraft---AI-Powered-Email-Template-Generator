import '/backend/gemini/gemini.dart';
import '/components/loading/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
        'in one response message , give me html file code for an email page including all styles and animations needed to make an amazing animated email ready to sent with title : \"${widget!.title}\" ,  matches this description : \"${widget!.description}\" , for a${widget!.category}. with this url well resized image and well displayed with content and title : the url \"${widget!.image}\" . use this chart  colors: ( ${functions.colorToString(widget!.color1)} , ${functions.colorToString(widget!.color2)},${functions.colorToString(widget!.color3)}). don\'t forget to make it in a creative and animated way in one code file to make the best page ever for what i need and make your response just a html code without any comments or buttons just an emails with content match description and title and category and chart color with animations and body message matches email elements .',
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
            widget!.title,
            ParamType.String,
          ),
          'description': serializeParam(
            widget!.description,
            ParamType.String,
          ),
          'color1': serializeParam(
            widget!.color1,
            ParamType.Color,
          ),
          'color2': serializeParam(
            widget!.color2,
            ParamType.Color,
          ),
          'color3': serializeParam(
            widget!.color3,
            ParamType.Color,
          ),
          'image': serializeParam(
            widget!.imagepath,
            ParamType.String,
          ),
          'category': serializeParam(
            widget!.category,
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
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
            child: Container(
              width: 100.0,
              height: 505.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.loadingModel,
                        updateCallback: () => setState(() {}),
                        child: LoadingWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
