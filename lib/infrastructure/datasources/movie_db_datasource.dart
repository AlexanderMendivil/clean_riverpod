import 'package:clean_riverpod/config/constants/environment.dart';
import 'package:clean_riverpod/domain/datasources/movies_datasource.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
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
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
