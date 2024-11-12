import 'package:clean_riverpod/domain/datasources/local_storage_datasource.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:isar/isar.dart';

class LocalStorageDbDatasource extends LocalStorageDatasource {

  Isar isar;
  LocalStorageDbDatasource({required this.isar});
  @override
  Future<void> deleteMovie({int? id}) async {
    try{
      isar.movies.delete(id!);      
    }catch(e){
      throw e;
    }
    
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