import 'package:clean_riverpod/domain/entities/movie.dart';
typedef MovieCallback = Future<List<Movie>> Function({int page});

class MovieRepositoryState {
  List<Movie> movies;
  bool? isLoading;
  int currentPage;
  String? error;
  final MovieCallback fetchMoreMovies;

  MovieRepositoryState({
    this.movies = const [],
    this.isLoading = false,
    this.error,
    this.currentPage = 1,
    required this.fetchMoreMovies,
  });

  MovieRepositoryState copyWith({
    List<Movie>? movies,
    bool? isLoading,
    String? error,
    int? currentPage,
  }) {    
    return MovieRepositoryState(
        movies: movies ?? this.movies,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error,
        currentPage: currentPage ?? this.currentPage,
        fetchMoreMovies: fetchMoreMovies);
  }
}