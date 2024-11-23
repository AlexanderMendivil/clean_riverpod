import 'dart:io';

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

    late Directory dir;
    late Isar isar;
    getApplicationDocumentsDirectory().then((onValue) {
      dir = onValue;
      isar = Isar.open(
      schemas: [MovieSchema],
      directory: dir.path,
    );
      });

    final localDb = ref.read(favoriteRepositoryProviderProvider(isar));
    return FavoriteMovieState(movies: [], localDb: localDb);
  }

  void addFavoriteMovie(Movie movie) async {
    await state.localDb.insertMovie(movie: movie);
    state = state.copyWith(movies: [...state.movies!, movie]);
  }

  void removeFavoriteMovie(int id) async {
    await state.localDb.deleteMovie(id: id);
    state = state.copyWith(movies: state.movies!.where((element) => element.id != id).toList());
  }

  void loadMovies() async {
    final movies = await state.localDb.loadMovies();
    state = state.copyWith(movies: movies);
  }
}

class FavoriteMovieState {
  List<Movie>? movies;
  LocalStorageImpl localDb;
  FavoriteMovieState({this.movies, required this.localDb});

  FavoriteMovieState copyWith({List<Movie>? movies, LocalStorageImpl? localDb}) {
    return FavoriteMovieState(
      movies: movies ?? this.movies,
      localDb: localDb ?? this.localDb,
    );
  }
}
