// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenreTableAdapter extends TypeAdapter<GenreTable> {
  @override
  final int typeId = 1;

  @override
  GenreTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenreTable(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GenreTable obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenreTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
