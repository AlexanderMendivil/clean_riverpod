import 'package:clean_riverpod/domain/entities/actor.dart';
import 'package:clean_riverpod/domain/repositories/actor_repository.dart';
import 'package:clean_riverpod/infrastructure/datasources/actor_db_datasource.dart';

class ActorRepositoryImpl extends ActorRepository{

final ActorDbDatasource actorDbDatasource;
  ActorRepositoryImpl({required this.actorDbDatasource});
  @override
  Future<List<Actor>> getActorsByMovieId(String movieId) async {
    return await actorDbDatasource.getActorsByMovieId(movieId);
  }
}