import 'package:clean_riverpod/domain/entities/actor.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/actor_moviedb.dart';

class ActorMapper{

  static Actor actorDBtoActor(Cast actorDB){
    return Actor(
      id: actorDB.id,
      name: actorDB.name,
      profilePath: actorDB.profilePath != null ? 'https://image.tmdb.org/t/p/w500${actorDB.profilePath}' : 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      character: actorDB.character ?? ''
    );
  }
}