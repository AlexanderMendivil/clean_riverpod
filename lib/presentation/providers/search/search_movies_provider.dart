
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_movies_provider.g.dart';

@Riverpod(keepAlive: true)
class SearchMoviesQuery extends _$SearchMoviesQuery {
  
  @override
  String build(){
    return '';
  }

  void updateSearchQuery(String query){
    state = query;
  }

}