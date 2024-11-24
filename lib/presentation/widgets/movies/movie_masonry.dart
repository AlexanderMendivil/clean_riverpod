import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class MovieMasonry extends StatefulWidget {
  final List<Movie> movies;
  final VoidCallback? loadNextPage;
  const MovieMasonry({super.key, required this.movies, this.loadNextPage});

  @override
  State<MovieMasonry> createState() => _MovieMasonryState();
}

class _MovieMasonryState extends State<MovieMasonry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: MasonryGridView.count(
        crossAxisCount: 3,
        itemCount: widget.movies.length,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemBuilder: (_, index) {
          return _MoviePosterLink(movie: widget.movies[index]);
        },
      ),
    );
  }
}

class _MoviePosterLink extends StatelessWidget {
  final Movie movie;
  const _MoviePosterLink({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/movie/${movie.id}');
      },
      child: Card(
        child: Image.network(movie.posterPath),
      ),
    );
  }
}
