import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.freezed.dart';

@freezed
class CastModel with _$CastModel {
  const CastModel._();

  const factory CastModel({
    required int? id,
    required String name,
    required String imagePath,
  }) = _CastModel;

  factory CastModel.empty() {
    return const CastModel(
      id: null,
      name: '',
      imagePath: '',
    );
  }
}
