import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/profile/data/data_sources/profile_data_source.dart';
import 'package:wheel_crm/features/profile/data/model/profile_model.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl extends ProfileDataSource {
  final HttpClient _client;

  ProfileDataSourceImpl({required HttpClient client}) : _client = client;

  @override
  Future<ProfileModel> getProfile() async {
    final result = await _client.get(HttpPaths.profile);

    return ProfileModel.fromJson(result.data);
  }
}
