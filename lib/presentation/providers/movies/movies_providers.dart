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

  Future<void> loadNextPage({bool isInitial = false}) async {
    if(state.isLoading!) return;

    if(!isInitial){
      state = state.copyWith(isLoading: true);
    }
    final List<Movie> movies =
        await state.fetchMoreMovies(page: state.currentPage);
        final newPage = state.currentPage + 1;        
    state = state.copyWith(
        movies: [...state.movies, ...movies,],
        currentPage: newPage, isLoading: false);
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
