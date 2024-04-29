import 'package:wheel_crm/features/profile/data/model/profile_model.dart';

abstract class ProfileDataSource {
  Future<ProfileModel> getProfile();
}
