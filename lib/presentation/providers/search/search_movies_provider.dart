
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_movies_provider.g.dart';

@Riverpod(keepAlive: true)
class SearchMoviesQuery extends _$SearchMoviesQuery {
  
  @override
  SearchMovieState build(){
    print("--------------------Recall build");
    return SearchMovieState(query: '', movies: []);
  }

  void updateSearchQuery(String query){    
    state = SearchMovieState(query: query);    
  }

  void cachedMovies(List<Movie> movies){
    state = SearchMovieState(movies: movies);
  }

}


class SearchMovieState{
  final String? query;
  final List<Movie>? movies;

  SearchMovieState({this.query, this.movies});

  SearchMovieState copyWith({String? query, List<Movie>? movies}){
    return SearchMovieState(
      query: query ?? this.query,
      movies: movies ?? this.movies
    );
  }
}