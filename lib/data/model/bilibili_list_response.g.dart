// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bilibili_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiliBiliListResponse<T> _$BiliBiliListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BiliBiliListResponse<T>(
      code: json['code'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      ttl: json['ttl'] as int?,
    );

Map<String, dynamic> _$BiliBiliListResponseToJson<T>(
  BiliBiliListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.map(toJsonT).toList(),
      'ttl': instance.ttl,
    };
