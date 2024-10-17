import 'package:clean_riverpod/domain/entities/actor.dart';

typedef ActorCallback = Future<List<Actor>> Function(String movieId);
class ActorsProviderState {
  final bool isLoading;
  final List<Actor> actors;
  final ActorCallback fetchActors;

  ActorsProviderState({this.isLoading = false, this.actors = const [], required this.fetchActors});
  
  ActorsProviderState copyWith({
    bool? isLoading,
    List<Actor>? actors,    
  }){
    return ActorsProviderState(
      isLoading: isLoading ?? this.isLoading,
      actors: actors ?? this.actors,
      fetchActors: fetchActors
    );
  }
}