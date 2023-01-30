// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bilibili_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiliBiliResponse<T> _$BiliBiliResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BiliBiliResponse<T>(
      code: json['code'] as int,
      message: json['message'] as String,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      ttl: json['ttl'] as int?,
    );

Map<String, dynamic> _$BiliBiliResponseToJson<T>(
  BiliBiliResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'ttl': instance.ttl,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
