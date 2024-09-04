import 'package:clean_riverpod/domain/entities/movie.dart';

abstract class MovieRepository{
  Future<List<Movie>> getNowPlayingMovies({int page = 1});
}