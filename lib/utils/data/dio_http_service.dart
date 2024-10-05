import 'dart:io';
import 'package:dio/dio.dart';
import 'package:one_click/constants/api_constant/api_constants.dart';

/// * HTTP client with cookie manager interceptor,
/// * Responsible to make API calls and returns raw data
class DioHttpService {
  DioHttpService() {
    dio = Dio(baseOptions);
  }

  late final Dio dio;

  String get baseUrl => ApiConstant.baseUrl;

  String authToken = '';

  BaseOptions get baseOptions => BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: ApiConstant.defaultConnectTimeout,
    receiveTimeout: ApiConstant.defaultReceiveTimeout,
  );

  Future<T?> get<T>(
      String endpoint, {
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    try {
      final response = await dio.get<T>(
        endpoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }

  Future<T?> post<T>(
      String endpoint, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
      }) async {
    try {
      final response = await dio.post<T>(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }
}
