

import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/movies_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_slideshow_provider.g.dart';
@riverpod
List<Movie> moviesSlideShow(MoviesSlideShowRef ref) {
  final movies = ref.watch(movieNotifierProvider).movies;
  
  if (movies.isEmpty) {
    return [];
  }

  return movies.sublist(0, 6);
}