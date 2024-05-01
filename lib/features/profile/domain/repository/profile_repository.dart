import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile();
  Future<Either<Failure, List<ProfileEntity>>> getProfileTeam();
}
