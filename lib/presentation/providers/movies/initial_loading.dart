

import 'package:clean_riverpod/presentation/providers/movies/movie_popular.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_top_rated.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_upcoming.dart';
import 'package:clean_riverpod/presentation/providers/movies/movies_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initial_loading.g.dart';

@riverpod
bool initialLoading(InitialLoadingRef ref){
    final isMoviesEmpty = ref.watch(movieNotifierProvider).movies.isEmpty;
    final isPopularMoviesEmpty = ref.watch(moviePopularNotifierProvider).movies.isEmpty;
    final isUpcomingMoviesEmpty = ref.watch(movieUpcomingNotifierProvider).movies.isEmpty;
    final isTopRatedMoviesEmpty = ref.watch(movieTopRatedNotifierProvider).movies.isEmpty;

    return isMoviesEmpty || isPopularMoviesEmpty || isUpcomingMoviesEmpty || isTopRatedMoviesEmpty;
}