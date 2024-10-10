import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/movie_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_detail.g.dart';

typedef MovieDetailCallback = Future<Movie> Function(String movieId);
@riverpod
class MovieDetailNotifier extends _$MovieDetailNotifier {
  @override
  MovieDetailState build() {
    final fetchMovieDetail = ref.watch(movieRepositoryProviderProvider).getMovieDetail;
    return MovieDetailState(fetchMovieDetail: fetchMovieDetail);
  }

  Future<void> loadMovieDetail(String movieId, {bool isInitial = false}) async {

    if(state.movie != null ){
      return;
    }
    if (state.loading!) return;

    if(!isInitial){
      state = state.copyWith(loading: true);
    }
    final Movie movie = await state.fetchMovieDetail!(movieId);
    state = state.copyWith(movie: movie);

  }
}

class MovieDetailState {
  Movie? movie;
  MovieDetailCallback? fetchMovieDetail;
  bool? loading;

  MovieDetailState({this.movie, this.fetchMovieDetail, this.loading = false});

  MovieDetailState copyWith({Movie? movie, MovieDetailCallback? fetchMovieDetail, bool? loading}) {
    return MovieDetailState(movie: movie ?? this.movie, fetchMovieDetail: fetchMovieDetail ?? this.fetchMovieDetail);
  }
}