import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GeminiRequestCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
    String? title = '',
    String? description = '',
    String? imagepath = '',
    String? color1 = '',
    String? color2 = '',
    String? color3 = '',
    String? category = '',
  }) async {
    final ffApiRequestBody = '''
{
  "$prompt": "Use this prompt: '{$description}' and respond only with HTML file code for an email page in the '{$category}' category containing this title: '{$title}', this image:  '{"$imagepath"}' without if '{'without image'}, and these colors: '{$color1}', '{$color2}', '{$color3}'."
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GeminiRequest',
      apiUrl: 'https://api.gemini.com/generate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer YOUR_GEMINI_API_KEY',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
