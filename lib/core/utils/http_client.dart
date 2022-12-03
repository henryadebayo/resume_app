import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import '/core/errors/exceptions.dart';
import 'app_log.dart';

typedef _ProgressCallback = void Function(int count, int total);

abstract class AppHTTPClient {
  Future<Map<String, dynamic>> get(String url);

  Future<Map<String, dynamic>> post(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  });
}

class DioHTTPClient implements AppHTTPClient {
  DioHTTPClient({
    required Dio client,
  }) : _client = client;

  final Dio _client;

  @override
  Future<Map<String, dynamic>> get(
    String endpoint, {
    Function(int, int)? onReceiveProgress,
  }) async {
    return makeRequest(
      endpoint: endpoint,
      onReceiveProgress: onReceiveProgress,
      requestMethod: _RequestMethod.get,
    );
  }

  @override
  Future<Map<String, dynamic>> post(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        onReceiveProgress: onReceiveProgress,
        requestMethod: _RequestMethod.post,
      );

  @override
  Future<Map<String, dynamic>> put(
    String endpoint, {
    required Map<String, dynamic> body,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        endpoint: endpoint,
        body: body,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
        requestMethod: _RequestMethod.put,
      );

  Future<Map<String, dynamic>> makeRequest({
    required String endpoint,
    required String requestMethod,
    Map<String, dynamic>? body,
    List<FormUploadDocument>? uploads,
    _ProgressCallback? onSendProgress,
    _ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dynamic data = body;
      AppLog.i('==================== ENDPOINT $endpoint ==================');
      if (body != null) {
        AppLog.i('==================== BODY SENT IS ==================');
        AppLog.i(jsonEncode(body));
      }
      if (uploads != null && uploads.isNotEmpty) {
        AppLog.i('==================== FILES SENT IS ==================');
        AppLog.i(uploads
            .map((FormUploadDocument uploadDocument) =>
                uploadDocument.toString())
            .join('\n'));
        data = FormData.fromMap(body ?? <String, dynamic>{})
          ..files.addAll(
            uploads.map(
              (FormUploadDocument uploadDocument) =>
                  MapEntry<String, MultipartFile>(
                uploadDocument.field,
                MultipartFile.fromFileSync(
                  uploadDocument.file.path,
                ),
              ),
            ),
          );
      }

      final Response<dynamic> response = await _client.request<dynamic>(
        endpoint,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        options: Options()..method = requestMethod,
        data: data,
      );

      if (response.data != null) {
        AppLog.i('==================== OBJECT RECEIVED  IS ==================');
        late Map<String, dynamic> data;
        if (response.data is Map) {
          data = response.data as Map<String, dynamic>;
        }
        if (response.data is List) {
          data = <String, dynamic>{'data': response.data};
        }
        if (response.data is String) {
          data = jsonDecode(response.data as String) as Map<String, dynamic>;
        }
        AppLog.i(data.toString());
        if (data['data'] is Map<String, dynamic>) {
          return data['data'] as Map<String, dynamic>;
        }
        if (data['data'] is List) {
          if (data['results'] != null) {
            return <String, dynamic>{
              'results': data['results'],
              'items': data['data']
            };
          }
          return <String, dynamic>{'items': data['data']};
        }
        if (response.data['data'] is List) {
          return <String, dynamic>{'items': response.data['data']};
        }
        if (response.data['data'] is String) {
          return <String, dynamic>{'address': response.data['data']};
        }
        if (response.data is List<int>) {
          return <String, dynamic>{'bytes': response.data};
        }
      }
      return <String, dynamic>{};
    } on DioError catch (error) {
      AppLog.i('==================== ERROR THROWN IS ==================');
      AppLog.i(jsonEncode(error.response?.data));

      switch (error.type) {
        case DioErrorType.connectTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.connectTimeout));
        case DioErrorType.sendTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.sendTimeout));
        case DioErrorType.receiveTimeout:
          throw TimeoutException(error.message,
              Duration(milliseconds: _client.options.receiveTimeout));
        case DioErrorType.response:
          final String errorMessage =
              (error.response?.data['message'] as String?) ?? error.message;
          throw ServerException(errorMessage);
        case DioErrorType.other:
          if (error.message.contains('SocketException')) {
            throw AppException('No Internet');
          }

          throw AppException();
        default:
          throw AppException();
      }
    } catch (error, stackTrace) {
      AppLog.e(error, stackTrace);
      throw AppException();
    }
  }
}

class _RequestMethod {
  const _RequestMethod._();
  static const String post = 'POST';
  static const String get = 'GET';
  static const String delete = 'DELETE';
  static const String put = 'PUT';
  static const String patch = 'PATCH';
}

class FormUploadDocument {
  const FormUploadDocument({
    required this.field,
    required this.file,
  });
  final String field;
  final File file;

  @override
  String toString() {
    return 'Field: $field || FilePath: ${file.path}';
  }
}
