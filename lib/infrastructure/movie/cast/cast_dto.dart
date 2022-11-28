import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/movie/cast/cast_model.dart';

part 'cast_dto.freezed.dart';

@freezed
class CastDto with _$CastDto {
  const CastDto._();

  const factory CastDto({
    required int? id,
    required String name,
    required String imagePath,
  }) = _CastDto;

  factory CastDto.fromJson(Map<String, dynamic> json) {
    return CastDto(
      id: json['id'],
      name: json['original_name'],
      imagePath: json['profile_path'] ?? '',
    );
  }

  CastModel toModel() {
    return CastModel(
      id: id,
      name: name,
      imagePath: imagePath,
    );
  }
}
