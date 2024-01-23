// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataImpl _$$AuthDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataImpl(
      token: json['token'] as String?,
      authInfo: AuthInfo.fromJson(json['authUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthDataImplToJson(_$AuthDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'authUser': instance.authInfo,
    };

_$AuthInfoImpl _$$AuthInfoImplFromJson(Map<String, dynamic> json) =>
    _$AuthInfoImpl(
      phone: json['phone'] as int?,
      name: json['name'] as String?,
      statusId: json['status_id'] as int?,
    );

Map<String, dynamic> _$$AuthInfoImplToJson(_$AuthInfoImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'status_id': instance.statusId,
    };
