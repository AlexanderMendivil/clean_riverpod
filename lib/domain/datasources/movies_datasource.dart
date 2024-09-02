import 'package:clean_riverpod/domain/entities/movie.dart';

abstract class MovieDataSource{
  Future<Movie> getNowPlayingMovies({int page = 1});
}