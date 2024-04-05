part of 'acceptance_bloc.dart';

@freezed
class AcceptanceEvent with _$AcceptanceEvent {
  const factory AcceptanceEvent.getAcceptance({
    DateTime? startDate,
    DateTime? endDate,
    int? storageId,
  }) = _GetAcceptance;

  const factory AcceptanceEvent.addAcceptance(
          {required CreateAcceptanceEntity createAcceptanceEntity}) =
      _AddAcceptance;

  const factory AcceptanceEvent.getAcceptanceById({
    required int? acceptanceId,
    // String? search,
  }) = _GetAcceptanceById;
}
