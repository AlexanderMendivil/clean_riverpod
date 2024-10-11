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
    ref.read(movieDetailNotifierProvider.notifier).loadMovieDetail(widget.movieId, isInitial: true);
  }
@override
  Widget build(BuildContext context) {
    final state = ref.watch(movieDetailNotifierProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Screen'),
      ),
      body: Center(
        child: state.movie == null || state.movie?.id.toString() != widget.movieId ? const CircularProgressIndicator() :  Text('Movie Screen: ${state.movie?.originalTitle}'),
      ),
    );
  }
}