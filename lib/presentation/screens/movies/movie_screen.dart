import 'package:clean_riverpod/domain/entities/actor.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/actors/actors_provider.dart';
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

    ref
        .read(actorsProviderProvider.notifier)
        .loadActors(movieId: widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(movieDetailNotifierProvider);
    final actors = ref.watch(actorsProviderProvider).actors;

    return state.movie == null ||
            widget.movieId != state.movie!.id.toString() ||
            actors.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                _CustomSliverAppBar(movie: state.movie!),
                SliverList(
                    delegate: SliverChildBuilderDelegate(childCount: 1,
                        (BuildContext _, int index) {
                  return _MovieDetails(
                    movie: state.movie!,
                    actors: actors,
                  );
                })),
              ],
            ),
          );
  }
}

class _MovieDetails extends StatelessWidget {
  final Movie movie;
  final List<Actor> actors;
  const _MovieDetails({required this.movie, required this.actors});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textStyles = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(movie.posterPath, width: size.width * 0.3),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: size.width * 0.6,
                child: Column(
                  children: [
                    Text(
                      movie.title,
                      style: textStyles.titleLarge,
                    ),
                    Text(
                      movie.overview!,
                      style: textStyles.titleLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            children: [
              ...movie.genreIds.map((genre) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Chip(
                      label: Text(genre),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ))
            ],
          ),
        ),
        _ActorsByMovie(
          actors: actors,
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}

class _ActorsByMovie extends StatelessWidget {
  final List<Actor> actors;
  const _ActorsByMovie({
    required this.actors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, int index) {
            return Container(
              padding: const EdgeInsets.all(8),
              width: 135,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(actors[index].profilePath,
                        height: 150, width: 135, fit: BoxFit.cover),
                  ),
                  Text(actors[index].name),
                  Text(actors[index].character),
                ],
              ),
            );
          },
          itemCount: actors.length),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  final Movie movie;
  const _CustomSliverAppBar({required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ))
      ],
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
                movie.posterPath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.7, 1.0],
                          colors: [Colors.transparent, Colors.black87]))),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topLeft, stops: [
                0.0,
                0.3
              ], colors: [
                Colors.black87,
                Colors.transparent,
              ]))),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topRight, stops: [
                0.0,
                0.3
              ], colors: [
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
