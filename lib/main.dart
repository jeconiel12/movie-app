import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart';

import 'di/injection.dart';
import 'domain/movie/genre/genre_table.dart';
import 'presentation/core/movie_app.dart';

void main() async {
  await setup();
  runApp(const MovieApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'env/.env');
  configureInjection();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(GenreTableAdapter());
}
