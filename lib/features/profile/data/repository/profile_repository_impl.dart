import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/features/profile/data/data_sources/profile_data_source.dart';
import 'package:wheel_crm/features/profile/data/model/profile_model.dart';
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart';
import 'package:wheel_crm/features/profile/domain/repository/profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileDataSource _dataSource;
  final Converter<ProfileModel, ProfileEntity> _converter;

  ProfileRepositoryImpl({
    required ProfileDataSource dataSource,
    required Converter<ProfileModel, ProfileEntity> converter,
  })  : _dataSource = dataSource,
        _converter = converter;

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final result = await _dataSource.getProfile();

      return Right(_converter.convert(result));
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<ProfileEntity>>> getProfileTeam() async {
    try {
      final result = await _dataSource.getTeams();

      final teams = result.map((e) => _converter.convert(e)).toList();
      return Right(teams);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
