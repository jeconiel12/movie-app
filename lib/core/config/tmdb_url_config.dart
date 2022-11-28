import 'package:flutter_dotenv/flutter_dotenv.dart';

class TMDBUrlConfig {
  TMDBUrlConfig._();

  static String get _imageBaseUrl => dotenv.get('TMDB_IMAGE_BASE_URL');
  static String get _imageSizeLarge => dotenv.get('TMDB_IMAGE_SIZE_LARGE');
  static String get _imageSizeMedium => dotenv.get('TMDB_IMAGE_SIZE_MEDIUM');
  static String get _imageSizeSmall => dotenv.get('TMDB_IMAGE_SIZE_SMALL');

  static String get apiKey => dotenv.get('TMDB_API_KEY', fallback: '');
  static String get baseUrl => dotenv.get('TMDB_BASE_URL');
  static String get imageUrlLarge => '$_imageBaseUrl$_imageSizeLarge';
  static String get imageUrlMedium => '$_imageBaseUrl$_imageSizeMedium';
  static String get imageUrlSmall => '$_imageBaseUrl$_imageSizeSmall';
}
