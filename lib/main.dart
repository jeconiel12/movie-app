import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie_app/domain/movie/genre/genre_table.dart';
import 'package:movie_app/presentation/core/movie_app.dart';
import 'package:path_provider/path_provider.dart';
import 'core/get_it.dart' as di;

void main() async {
  await setup();
  runApp(const MovieApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(GenreTableAdapter());
  di.setup();
}
