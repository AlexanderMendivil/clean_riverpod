import 'package:clean_riverpod/domain/entities/actor.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/actor_moviedb.dart';

class ActorMapper{

  static Actor actorDBtoActor(Cast actorDB){
    return Actor(
      id: actorDB.id,
      name: actorDB.name,
      profilePath: actorDB.profilePath ?? '',
      character: actorDB.character ?? ''
    );
  }
}