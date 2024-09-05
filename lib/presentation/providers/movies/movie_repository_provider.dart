import 'package:clean_riverpod/infrastructure/datasources/movie_db_datasource.dart';
import 'package:clean_riverpod/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository_provider.g.dart';

@riverpod
MovieRepositoryImpl movieRepositoryProvider(MovieRepositoryProviderRef ref) =>
    MovieRepositoryImpl(dataSource: MovieDBDataSource());
