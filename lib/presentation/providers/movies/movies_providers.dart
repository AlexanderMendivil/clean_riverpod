import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_providers.g.dart';

typedef MovieCallback = Future<List<Movie>> Function({int page});

@riverpod
class MovieNotifier extends _$MovieNotifier {
  @override
  MovieRepositoryState build() {
    final fetchMoreMovies =
        ref.watch(movieRepositoryProviderProvider).getNowPlayingMovies;
    return MovieRepositoryState(fetchMoreMovies: fetchMoreMovies);
  }

  Future<void> loadNextPage() async {
    final List<Movie> movies =
        await state.fetchMoreMovies(page: state.currentPage);
    state = state.copyWith(
        movies: [...state.movies, ...movies],
        currentPage: state.currentPage++);
  }
}

class MovieRepositoryState {
  List<Movie> movies;
  bool? isLoading;
  int currentPage;
  String? error;
  final MovieCallback fetchMoreMovies;

  MovieRepositoryState({
    this.movies = const [],
    this.isLoading,
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
