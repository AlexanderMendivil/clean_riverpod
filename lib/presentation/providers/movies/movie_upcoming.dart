import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_repository_provider.dart';
import 'package:clean_riverpod/presentation/providers/movies/movies_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_upcoming.g.dart';

@riverpod
class MovieUpcomingNotifier extends _$MovieUpcomingNotifier{

  @override
  MovieRepositoryState build(){
    final fetchMoreMovies = ref.watch(movieRepositoryProviderProvider).getUpcomingMovies;
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