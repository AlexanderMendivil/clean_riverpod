import 'package:clean_riverpod/presentation/providers/movies/movie_popular.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_top_rated.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_upcoming.dart';
import 'package:clean_riverpod/presentation/providers/movies/movies_providers.dart';
import 'package:clean_riverpod/presentation/providers/movies/movies_slideshow_provider.dart';
import 'package:clean_riverpod/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeView(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class HomeView extends ConsumerStatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(movieNotifierProvider.notifier).loadNextPage(isInitial: true);
    ref.read(moviePopularNotifierProvider.notifier).loadNextPage(isInitial: true);
    ref.read(movieUpcomingNotifierProvider.notifier).loadNextPage(isInitial: true);
    ref.read(movieTopRatedNotifierProvider.notifier).loadNextPage(isInitial: true);
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(movieNotifierProvider).movies;
    final popularMovies = ref.watch(moviePopularNotifierProvider).movies;
    final upcomingMovies = ref.watch(movieUpcomingNotifierProvider).movies;
    final topRatedMovies = ref.watch(movieTopRatedNotifierProvider).movies;
    final sublistMovie = ref.watch(moviesSlideShowProvider);

    if (sublistMovie.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return CustomScrollView(slivers: [
      const SliverAppBar(
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: CustomAppBar(),
        ),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (_, index) {
          return Column(
            children: [
              MoviesSlideshow(movies: sublistMovie.sublist(0, 6)),
              MovieHorizontalListview(
                movies: movies,
                title: 'En cines',
                subTitle: 'Lunes 20',
                nextPage: () =>
                    ref.read(movieNotifierProvider.notifier).loadNextPage(),
              ),
              MovieHorizontalListview(
                movies: upcomingMovies,
                title: 'Proximamente',
                subTitle: 'Lunes 20',
                nextPage: () =>
                    ref.read(movieUpcomingNotifierProvider.notifier).loadNextPage(),
              ),
              MovieHorizontalListview(
                movies: popularMovies,
                title: 'Populares',
                subTitle: 'Lunes 20',
                nextPage: () =>
                    ref.read(moviePopularNotifierProvider.notifier).loadNextPage(),
              ),
              MovieHorizontalListview(
                movies: topRatedMovies,
                title: 'Mejor calificadas',
                subTitle: 'Lunes 20',
                nextPage: () =>
                    ref.read(movieTopRatedNotifierProvider.notifier).loadNextPage(),
              ),
            ],
          );
        },
        childCount: 1,
      ))
    ]);
  }
}
