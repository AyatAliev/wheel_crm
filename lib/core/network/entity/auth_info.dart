import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
class AuthData with _$AuthData {
  factory AuthData({
    required String? token,
    @JsonKey(name: 'authUser')
    required AuthInfo authInfo,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);
}

@freezed
class AuthInfo with _$AuthInfo {
  factory AuthInfo({
    required int? phone,
    required String? name,
    @JsonKey(name: 'status_id')
    required int? statusId,
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) => _$AuthInfoFromJson(json);
}
