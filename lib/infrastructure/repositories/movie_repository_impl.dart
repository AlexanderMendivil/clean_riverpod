import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/domain/repositories/movie_repository.dart';
import 'package:clean_riverpod/infrastructure/datasources/movie_db_datasource.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieDBDataSource dataSource;
  MovieRepositoryImpl({required this.dataSource});

  @override
  Future<List<Movie>> getNowPlayingMovies({int page = 1}) async {
    try {
      return await dataSource.getNowPlayingMovies(page: page);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<Movie>> getPopularMovies({int page = 1}) async {
    try {
      return await dataSource.getPopularMovies(page: page);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<List<Movie>> getTopRatedMovies({int page = 1}) async {
    try {
      return await dataSource.getTopRatedMovies(page: page);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<List<Movie>> getUpcomingMovies({int page = 1}) async {
    try {
      return await dataSource.getUpcomingMovies(page: page);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<Movie> getMovieDetail(String id) async {  
    try{    
      return await dataSource.getMovieDetail(id);
    }catch(e){
      throw Exception(e);
    }
  }
}
