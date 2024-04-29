import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wheel_crm/features/profile/data/model/profile_model.dart';
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart';
import 'package:wheel_crm/injection/injection.dart';

@Injectable(as: Converter<ProfileModel, ProfileEntity>)
class ProfileModelToEntity extends Converter<ProfileModel, ProfileEntity> {
  @override
  ProfileEntity convert(ProfileModel input) {
    return ProfileEntity(
      id: input.id,
      email: input.email,
      role: input.role,
      team: input.team,
      functions: getIt<Converter<FunctionsModel, FunctionsEntity>>().convert(input.functions!),
    );
  }
}
