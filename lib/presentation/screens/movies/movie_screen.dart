import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieScreen extends ConsumerStatefulWidget {
  static const name = 'movie-screen';

  final String movieId;
  const MovieScreen({super.key, required this.movieId});

  @override
  ConsumerState<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends ConsumerState<MovieScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(movieDetailNotifierProvider.notifier)
        .loadMovieDetail(widget.movieId, isInitial: true);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(movieDetailNotifierProvider);

    return state.movie == null || widget.movieId != state.movie!.id.toString()
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                _CustomSliverAppBar(movie: state.movie!),
              ],
            ),
          );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  final Movie movie;
  const _CustomSliverAppBar({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: MediaQuery.sizeOf(context).height * 0.7,
      foregroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        title: Text(
          movie.title,
          style: const TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.start,
        ),
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                movie.posterPath!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration:
                      BoxDecoration(gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.7, 1.0],
                        colors: [
                        Colors.transparent,
                        Colors.black87
                      ]))),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration:
                      BoxDecoration(gradient: LinearGradient(
                        begin: Alignment.topLeft,                        
                        stops: [0.0, 0.3],
                        colors: [
                        Colors.black87,
                        Colors.transparent,
                      ]))),
            )
          ],
        ),
      ),
    );
  }
}
