// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one_click/utils/data/network_exceptions.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = Success<T>;

  const factory ApiResult.failure(NetworkExceptions error) = Failure<T>;
}
