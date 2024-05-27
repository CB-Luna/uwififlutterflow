import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
}

/// End OpenAI ChatGPT Group Code

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginAPI',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'ApiKey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? currentUserIdAPI(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? currentUserEmailAPI(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? currentUserAccessTokenAPI(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class RegistrosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Registros',
      apiUrl: 'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? overview(dynamic response) => (getJsonField(
        response,
        r'''$[:].overview''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? posterPath(dynamic response) => (getJsonField(
        response,
        r'''$[:].poster_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? genreIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].genre_ids''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? video(dynamic response) => (getJsonField(
        response,
        r'''$[:].video''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? duration(dynamic response) => getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?;
  static List? urlAd(dynamic response) => getJsonField(
        response,
        r'''$[:].url_ad''',
        true,
      ) as List?;
  static List? status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?;
  static List? expirationDate(dynamic response) => getJsonField(
        response,
        r'''$[:].expiration_date''',
        true,
      ) as List?;
  static List? priority(dynamic response) => getJsonField(
        response,
        r'''$[:].priority''',
        true,
      ) as List?;
  static List? userId(dynamic response) => getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?;
  static List? rewardId(dynamic response) => getJsonField(
        response,
        r'''$[:].reward_id''',
        true,
      ) as List?;
}

class EducationCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Education',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.5',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TechnologyAndElectronicsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Technology and Electronics',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.1',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TravelAndTourismCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Travel and Tourism',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.2',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FoodCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Food',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.3',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FashionCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fashion',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.4',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EntertainmentCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Entertainment',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.7',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class HealthcareCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Healthcare',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.6',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SportsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Sports',
      apiUrl:
          'https://nsrprlygqaqgljpfggjh.supabase.co/rest/v1/ad?genre_id=eq.8',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5zcnBybHlncWFxZ2xqcGZnZ2poIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAxNzU2MjUsImV4cCI6MjAxNTc1MTYyNX0.JQUJ2i2mZlygBys5Gd5elAL_00TM_U2vJrXlIVuOtbk',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
