import 'package:clean_riverpod/domain/datasources/local_storage_datasource.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';

class LocalStorageDbDatasource extends LocalStorageDatasource {
  
  @override
  Future<void> deleteMovie({int? id}) async {
    // TODO: implement deleteMovie
    throw UnimplementedError();
  }

  @override
  Future<void> insertMovie({Movie? movie}) async {
    // TODO: implement insertMovie
    throw UnimplementedError();
  }

  @override
  Future<bool> isMovieFavorite({int? id}) async {
    // TODO: implement isMovieFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> loadMovies({int limit = 10, int offset = 0}) {
    // TODO: implement loadMovies
    throw UnimplementedError();
  }
  

}