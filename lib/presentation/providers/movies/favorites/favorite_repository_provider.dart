

import 'package:clean_riverpod/infrastructure/datasources/local_storage_db_datasource.dart';
import 'package:clean_riverpod/infrastructure/repositories/local_storage_impl.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'favorite_repository_provider.g.dart';

@riverpod
LocalStorageImpl favoriteRepositoryProvider(FavoriteRepositoryProviderRef ref, Isar isar) => LocalStorageImpl(datasource: LocalStorageDbDatasource(isar: isar));