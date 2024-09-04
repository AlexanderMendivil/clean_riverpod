import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/movie_movidedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
      adult: movieDB.adult,
      backdropPath: movieDB.backdropPath != '' ? 'https://image.tmdb.org/t/p/w500${movieDB.backdropPath}' : null,
      genreIds: movieDB.genreIds.map((id) => id.toString()).toList(),
      id: movieDB.id,
      originalLanguage: movieDB.originalLanguage,
      originalTitle: movieDB.originalTitle,
      overview: movieDB.overview,
      popularity: movieDB.popularity,
      posterPath: movieDB.posterPath != '' ? 'https://image.tmdb.org/t/p/w500${movieDB.posterPath}' : '',
      releaseDate: movieDB.releaseDate,
      title: movieDB.title,
      video: movieDB.video,
      voteAverage: movieDB.voteAverage,
      voteCount: movieDB.voteCount
      );
}
