

import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_movies.g.dart';

@riverpod
class FavoriteMovies extends _$FavoriteMovies{
  @override
  FavoriteMovieState build(){
    return FavoriteMovieState(movies: []);
  }
}


class FavoriteMovieState{
  List<Movie>? movies;
  FavoriteMovieState({this.movies});

}