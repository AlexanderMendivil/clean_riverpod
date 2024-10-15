import 'package:clean_riverpod/domain/entities/actor.dart';

abstract class ActorRepository {
  Future<List<Actor>> getActorsByMovieId(String movieId);
}