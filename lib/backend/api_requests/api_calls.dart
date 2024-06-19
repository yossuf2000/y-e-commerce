import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UpdateTotalPriceCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{ "user_id": "$userId" }''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateTotalPrice',
      apiUrl:
          'https://bhzukydqmcpkiogwxyeq.supabase.co/rest/v1/rpc/update_total_price',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJoenVreWRxbWNwa2lvZ3d4eWVxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxNzQxNTE3MywiZXhwIjoyMDMyOTkxMTczfQ.Pg6Yr3CWiGcEZBRTvfSp5_3L79GIEZVtNj7fc2HOTrk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJoenVreWRxbWNwa2lvZ3d4eWVxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxNzQxNTE3MywiZXhwIjoyMDMyOTkxMTczfQ.Pg6Yr3CWiGcEZBRTvfSp5_3L79GIEZVtNj7fc2HOTrk',
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
