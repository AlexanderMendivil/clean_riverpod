import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movieDBKey = dotenv.get('THE_MOVIE_DB_KEY');
}