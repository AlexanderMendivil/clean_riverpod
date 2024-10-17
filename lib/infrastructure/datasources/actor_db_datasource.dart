import 'package:clean_riverpod/config/constants/environment.dart';
import 'package:clean_riverpod/domain/datasources/actors_datasource.dart';
import 'package:clean_riverpod/domain/entities/actor.dart';
import 'package:clean_riverpod/infrastructure/mappers/actor_mapper.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/actor_moviedb.dart';
import 'package:dio/dio.dart';

class ActorDbDatasource extends ActorsDatasource {
  final dio =
      Dio(BaseOptions(baseUrl: Environment.movieDBAPI, queryParameters: {
    'api_key': Environment.movieDBKey,
    'language': 'en-US',
  }));

  @override
  Future<List<Actor>> getActorsByMovieId(String movieId) async {
    try {      
      final response = await dio.get('/movie/$movieId/credits');

      final actors = ActorMovieDb.fromJson(response.data)
          .cast
          .map((cast) => ActorMapper.actorDBtoActor(cast))
          .toList();
      return actors;
    } catch (e) {
      throw Exception(e);
    }
  }
}
