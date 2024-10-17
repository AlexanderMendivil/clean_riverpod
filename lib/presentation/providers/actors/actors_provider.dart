import 'package:clean_riverpod/presentation/providers/actors/actors_repository_provider.dart';
import 'package:clean_riverpod/presentation/providers/actors/actos_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'actors_provider.g.dart';

@riverpod
class ActorsProvider extends _$ActorsProvider {
  @override
   ActorsProviderState build() {
    final fetchActors = ref.watch(actorRepositoryProviderProvider).getActorsByMovieId;
    return ActorsProviderState(fetchActors: fetchActors);
  }  
}
