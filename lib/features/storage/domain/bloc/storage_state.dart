part of 'storage_bloc.dart';

@freezed
class StorageState with _$StorageState {
  const factory StorageState({
    required final StateStatus stateStatus,
    required List<StorageEntity> storageEntity,
  }) = _StorageState;
}
