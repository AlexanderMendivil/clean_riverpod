import 'package:clean_riverpod/domain/entities/movie.dart';

abstract class MovieRepository{
  Future<Movie> getNowPlayingMovies({int page = 1});
}