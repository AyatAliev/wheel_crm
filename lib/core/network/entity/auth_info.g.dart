// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataImpl _$$AuthDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataImpl(
      tokenAccess: json['access'] as String?,
      tokenRefresh: json['refresh'] as String?,
      authInfo: json['authInfo'] == null
          ? null
          : AuthInfo.fromJson(json['authInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthDataImplToJson(_$AuthDataImpl instance) =>
    <String, dynamic>{
      'access': instance.tokenAccess,
      'refresh': instance.tokenRefresh,
      'authInfo': instance.authInfo,
    };

_$AuthInfoImpl _$$AuthInfoImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoImpl(
      phone: (json['phone'] as num?)?.toInt(),
      name: json['name'] as String?,
      statusId: (json['statusId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuthInfoImplToJson(_$AuthInfoImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'statusId': instance.statusId,
    };
