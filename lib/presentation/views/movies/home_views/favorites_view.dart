import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/favorites/favorites_movies.dart';
import 'package:clean_riverpod/presentation/widgets/movies/movie_masonry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesViews extends ConsumerStatefulWidget {
  const FavoritesViews({super.key});

  @override
  ConsumerState<FavoritesViews> createState() => _FavoritesViewsState();
}

class _FavoritesViewsState extends ConsumerState<FavoritesViews> {

  late List<Movie> movies;
  @override
  void initState() {
    super.initState();
    ref.read(favoriteMoviesProvider.notifier).loadMovies();
    movies = ref.read(favoriteMoviesProvider).movies!;
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: MovieMasonry(movies: movies,),
    );
  }
}