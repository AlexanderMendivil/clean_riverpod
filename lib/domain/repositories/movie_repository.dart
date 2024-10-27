import 'package:clean_riverpod/domain/entities/movie.dart';

abstract class MovieRepository{
  Future<List<Movie>> getNowPlayingMovies({int page = 1});
  Future<List<Movie>> getPopularMovies({int page = 1});
  Future<List<Movie>> getUpcomingMovies({int page = 1});
  Future<List<Movie>> getTopRatedMovies({int page = 1});
  Future<Movie> getMovieDetail(String id);
  Future<List<Movie>> getMoviesBySearchTerm(String term);
}