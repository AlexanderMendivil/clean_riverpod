import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/domain/repositories/local_storage_repository.dart';
import 'package:clean_riverpod/infrastructure/datasources/local_storage_db_datasource.dart';

class LocalStorageImpl extends LocalStorageRepository {
  LocalStorageDbDatasource datasource;
  LocalStorageImpl({required this.datasource});
  @override
  Future<void> deleteMovie({int? id}) async {
    try {
      await datasource.deleteMovie(id: id);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> insertMovie({Movie? movie}) async {
    try {
      await datasource.insertMovie(movie: movie);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<bool> isMovieFavorite({int? id}) async {
    try {
      return await datasource.isMovieFavorite(id: id);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<Movie>> loadMovies({int limit = 10, int offset = 0}) {
    try {
      return datasource.loadMovies(limit: limit, offset: offset);
    } catch (e) {
      throw e;
    }
  }
}
