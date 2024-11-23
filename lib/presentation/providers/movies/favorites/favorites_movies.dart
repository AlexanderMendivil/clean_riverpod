import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/infrastructure/repositories/local_storage_impl.dart';
import 'package:clean_riverpod/presentation/providers/movies/favorites/favorite_repository_provider.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_movies.g.dart';

@Riverpod(keepAlive: true)
class FavoriteMovies extends _$FavoriteMovies {
  @override
  FavoriteMovieState build() {

    return FavoriteMovieState(movies: []);
  }


  void init() async {

    if(state.hasInit!) return;
    final dir = await getApplicationDocumentsDirectory();

      final isar = Isar.open(
      schemas: [MovieSchema],
      directory: dir.path,
    );

    final localDb = ref.read(favoriteRepositoryProviderProvider(isar));
    state = state.copyWith(localDb: localDb, hasInit: true); 
  }
  void addFavoriteMovie(Movie movie) async {
    await state.localDb!.insertMovie(movie: movie);
    state = state.copyWith(movies: [...state.movies!, movie]);
  }

  void removeFavoriteMovie(int id) async {  
    await state.localDb!.deleteMovie(id: id);
    state = state.copyWith(movies: state.movies!.where((element) => element.id != id).toList());
  }

  void loadMovies() async {
    final movies = await state.localDb!.loadMovies();
    state = state.copyWith(movies: movies);
  }

  void movieById(int id) async {
    final isFavorite = await state.localDb!.isMovieFavorite(id: id);
    state = state.copyWith(isMovieFavorite: isFavorite);
  }
}

class FavoriteMovieState {
  List<Movie>? movies;
  LocalStorageImpl? localDb;
  bool? hasInit;
  bool? isMovieFavorite = false;
  FavoriteMovieState({this.movies, this.localDb, this.hasInit = false, this.isMovieFavorite = false});

  FavoriteMovieState copyWith({List<Movie>? movies, LocalStorageImpl? localDb, bool? hasInit, bool? isMovieFavorite}) {
    return FavoriteMovieState(
      movies: movies ?? this.movies,
      localDb: localDb ?? this.localDb,
      hasInit: hasInit ?? this.hasInit,
      isMovieFavorite: isMovieFavorite ?? this.isMovieFavorite
    );
  }
}
