import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {

  static String key = dotenv.env['TOKEN_SECRET_TMDB'] ?? 'Your_API_KEY';
  static String theBaseUrl=dotenv.env['API_TMDB'] ?? 'https://api.themoviedb.org/3';

}