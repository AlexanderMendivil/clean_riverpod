import 'package:clean_riverpod/config/constants/environment.dart';
import 'package:clean_riverpod/domain/datasources/movies_datasource.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/infrastructure/mappers/movie_mapper.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/movie_details.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDBDataSource extends MovieDataSource {
  final dio =
      Dio(BaseOptions(baseUrl: Environment.movieDBAPI, queryParameters: {
    'api_key': Environment.movieDBKey,
    'language': 'en-US',
  }));

  @override
  Future<List<Movie>> getNowPlayingMovies({int page = 1}) async {
    try {      
      final response = await dio.get('/movie/now_playing', queryParameters: {
        'page': page,
      });    
      return _jsonToMovies(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<List<Movie>> getPopularMovies({int page = 1}) async {
     try {      
      final response = await dio.get('/movie/popular', queryParameters: {
        'page': page,
      });
    
     return _jsonToMovies(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<Movie> _jsonToMovies(Map<String, dynamic> json) {         
        final List<Movie> movies = MovieDbResponse.fromJson(json)
          .results
          .where((movie) => movie.posterPath != '')
          .map((movie) => MovieMapper.movieDBToEntity(movie))
          .toList();
      return movies;
    
  }
  
  @override
  Future<List<Movie>> getTopRatedMovies({int page = 1}) async {
    try {      
      final response = await dio.get('/movie/upcoming', queryParameters: {
        'page': page,
      });
    
     return _jsonToMovies(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<List<Movie>> getUpcomingMovies({int page = 1}) async {
    try {      
      final response = await dio.get('/movie/top_rated', queryParameters: {
        'page': page,
      });
    
     return _jsonToMovies(response.data);
    } catch (e) {
      throw Exception(e);
    }   
  }
  
  @override
  Future<Movie> getMovieDetail(String id) async{
    try{

      final response = await dio.get('/movie/$id');

      final movieDB = MovieDetails.fromJson(response.data);

      return MovieMapper.movieDetailsToEntity(movieDB);
    }catch(e){
      throw Exception(e);
    }
  }
  
  @override
  Future<List<Movie>> getMoviesBySearchTerm(String term) async {
    try{
      final response = await dio.get('/search/movie', queryParameters: {
        'query': term,
      }); 
      return _jsonToMovies(response.data);
    }catch(e){
      throw Exception(e);
    }    
  }
}
