import 'package:clean_riverpod/domain/datasources/local_storage_datasource.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:isar/isar.dart';

class LocalStorageDbDatasource extends LocalStorageDatasource {

  Isar isar;
  LocalStorageDbDatasource({required this.isar});
  @override
  Future<void> deleteMovie({int? id}) async {
    try{

      await isar.writeAsync((isarAction){
        isarAction.movies.delete(id!);      
      }); 
    }catch(e){
      throw e;
    }
    
  }

  @override
  Future<void> insertMovie({Movie? movie}) async {
    try{
      await isar.writeAsync((isarAction){
        isar.movies.put(movie!);
      });
    }catch(e){
      throw e;
    }
  }

  @override
  Future<bool> isMovieFavorite({int? id}) async {
    // TODO: implement isMovieFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> loadMovies({int limit = 10, int offset = 0}) async {
    try{      
        return isar.movies.where().findAll(offset: offset, limit: limit);            
    }catch(e){
      throw e;
    }
  }
  

}