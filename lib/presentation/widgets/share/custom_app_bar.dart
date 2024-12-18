import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/delegates/search_movie_delegate.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_repository_provider.dart';
import 'package:clean_riverpod/presentation/providers/search/search_movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieReposiryProvider = ref.read(movieRepositoryProviderProvider);
    final searchQueryProviderQuery = ref.watch(searchMoviesQueryProvider);
    final searchQueryProvider = ref.read(searchMoviesQueryProvider.notifier);

    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Icon(
              Icons.movie_outlined,
              color: colors.primary,
            ),
            const SizedBox(width: 5),
            Text(
              'Cinemapedia',
              style: titleStyle,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  showSearch<Movie?>(
                    query: searchQueryProviderQuery.query,
                    context: context,
                    delegate: SearchMovieDelegate(
                      initialMovies: searchQueryProviderQuery.movies,
                        searchMoviesCallback: (query) async {
                          searchQueryProvider.updateSearchQuery(query);                          
                          final movies = await movieReposiryProvider.getMoviesBySearchTerm(query);
                          searchQueryProvider.cachedMovies(movies);
                          return Future.value(movies);
                        }),
                  ).then((movie) {
                    if (movie == null) {
                      return;
                    }

                    context.push('/movie/${movie.id}');
                  });
                },
                icon: const Icon(Icons.search))
          ],
        ),
      ),
    ));
  }
}
