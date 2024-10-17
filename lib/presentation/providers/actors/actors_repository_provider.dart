import 'package:clean_riverpod/infrastructure/datasources/actor_db_datasource.dart';
import 'package:clean_riverpod/infrastructure/repositories/actor_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'actors_repository_provider.g.dart';
@riverpod
ActorRepositoryImpl actorRepositoryProvider(ActorRepositoryProviderRef ref) => ActorRepositoryImpl(actorDbDatasource: ActorDbDatasource());

