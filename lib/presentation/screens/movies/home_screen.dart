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
    ref.read(movieNotifierProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(movieNotifierProvider).movies;
    final sublistMovie = ref.watch(moviesSlideShowProvider);

    if (sublistMovie.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        const CustomAppBar(),
        MoviesSlideshow(movies: sublistMovie.sublist(0, 6)),
        MovieHorizontalListview(movies: movies, title: 'label', subTitle: 'subTitle'),
        
      ],
    );
  }
}
