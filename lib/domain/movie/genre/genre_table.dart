import 'package:hive/hive.dart';

part 'genre_table.g.dart';

@HiveType(typeId: 1)
class GenreTable {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  GenreTable({required this.id, required this.name});
}
