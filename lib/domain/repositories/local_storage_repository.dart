import 'package:clean_riverpod/domain/entities/movie.dart';

abstract class LocalStorageRepository {
  Future<void> insertMovie({Movie movie});
  Future<void> deleteMovie({int id});
  Future<bool> isMovieFavorite({int id});
  Future<List<Movie>> loadMovies({int limit = 10, int offset = 0});
}