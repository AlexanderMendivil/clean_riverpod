import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:flutter/material.dart';

typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);

class SearchMovieDelegate extends SearchDelegate<Movie?> {
  @override
  String get searchFieldLabel => 'Search Movie';

  final SearchMoviesCallback searchMoviesCallback;
  SearchMovieDelegate({required this.searchMoviesCallback});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      FadeIn(
        animate: query.isNotEmpty,
        child: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("some");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query.isEmpty){
      return const Center(child: Text('Search for a movie'),);
    }

    
    return FutureBuilder(
      future: Future.delayed(const Duration(milliseconds: 500),  () async => await searchMoviesCallback(query)),
      builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
        final movies = snapshot.data ?? [];

        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (_, index) => _MovieItem(movie: movies[index], close: close,),
        );
      },
    );
  }
}

class _MovieItem extends StatelessWidget {
  const _MovieItem({
    required this.movie, required this.close,
  });

  final Movie movie;
  final Function close;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: () => close(context, movie),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          children: [
            SizedBox(
                width: size.width * 0.2,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(movie.posterPath))),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(movie.title, style: textStyle.titleMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
