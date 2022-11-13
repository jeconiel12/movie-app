import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_model.freezed.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel.local() = _Local;
  const factory FailureModel.network() = _Network;
  const factory FailureModel.remote() = _Remote;
}
