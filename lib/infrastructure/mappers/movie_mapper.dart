import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/infrastructure/models/moviedb/movie_details.dart';
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

      static Movie movieDetailsToEntity(MovieDetails movieDetails) => Movie(
      adult: movieDetails.adult,
      backdropPath: movieDetails.backdropPath != '' ? 'https://image.tmdb.org/t/p/w500${movieDetails.backdropPath}' : null,
      genreIds: movieDetails.genres.map((genre) => genre.name).toList(),
      id: movieDetails.id,
      originalLanguage: movieDetails.originalLanguage,
      originalTitle: movieDetails.originalTitle,
      overview: movieDetails.overview,
      popularity: movieDetails.popularity,
      posterPath: movieDetails.posterPath != '' ? 'https://image.tmdb.org/t/p/w500${movieDetails.posterPath}' : '',
      releaseDate: movieDetails.releaseDate,
      title: movieDetails.title,
      video: movieDetails.video,
      voteAverage: movieDetails.voteAverage,
      voteCount: movieDetails.voteCount
      );
      
}
