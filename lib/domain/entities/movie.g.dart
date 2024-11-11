// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetMovieCollection on Isar {
  IsarCollection<int, Movie> get movies => this.collection();
}

const MovieSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Movie',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'adult',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'backdropPath',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'genreIds',
        type: IsarType.stringList,
      ),
      IsarPropertySchema(
        name: 'originalLanguage',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'originalTitle',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'overview',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'popularity',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'posterPath',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'releaseDate',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'video',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'voteAverage',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'voteCount',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, Movie>(
    serialize: serializeMovie,
    deserialize: deserializeMovie,
    deserializeProperty: deserializeMovieProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeMovie(IsarWriter writer, Movie object) {
  IsarCore.writeBool(writer, 1, object.adult);
  {
    final value = object.backdropPath;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final list = object.genreIds;
    final listWriter = IsarCore.beginList(writer, 3, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeString(writer, 4, object.originalLanguage);
  IsarCore.writeString(writer, 5, object.originalTitle);
  {
    final value = object.overview;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  IsarCore.writeDouble(writer, 7, object.popularity);
  IsarCore.writeString(writer, 8, object.posterPath);
  IsarCore.writeLong(
      writer, 9, object.releaseDate.toUtc().microsecondsSinceEpoch);
  IsarCore.writeString(writer, 10, object.title);
  IsarCore.writeBool(writer, 11, object.video);
  IsarCore.writeDouble(writer, 12, object.voteAverage);
  IsarCore.writeLong(writer, 13, object.voteCount);
  return object.id;
}

@isarProtected
Movie deserializeMovie(IsarReader reader) {
  final bool _adult;
  _adult = IsarCore.readBool(reader, 1);
  final String? _backdropPath;
  _backdropPath = IsarCore.readString(reader, 2);
  final List<String> _genreIds;
  {
    final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _genreIds = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _genreIds = list;
      }
    }
  }
  final int _id;
  _id = IsarCore.readId(reader);
  final String _originalLanguage;
  _originalLanguage = IsarCore.readString(reader, 4) ?? '';
  final String _originalTitle;
  _originalTitle = IsarCore.readString(reader, 5) ?? '';
  final String? _overview;
  _overview = IsarCore.readString(reader, 6);
  final double _popularity;
  _popularity = IsarCore.readDouble(reader, 7);
  final String _posterPath;
  _posterPath = IsarCore.readString(reader, 8) ?? '';
  final DateTime _releaseDate;
  {
    final value = IsarCore.readLong(reader, 9);
    if (value == -9223372036854775808) {
      _releaseDate =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _releaseDate =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String _title;
  _title = IsarCore.readString(reader, 10) ?? '';
  final bool _video;
  _video = IsarCore.readBool(reader, 11);
  final double _voteAverage;
  _voteAverage = IsarCore.readDouble(reader, 12);
  final int _voteCount;
  _voteCount = IsarCore.readLong(reader, 13);
  final object = Movie(
    adult: _adult,
    backdropPath: _backdropPath,
    genreIds: _genreIds,
    id: _id,
    originalLanguage: _originalLanguage,
    originalTitle: _originalTitle,
    overview: _overview,
    popularity: _popularity,
    posterPath: _posterPath,
    releaseDate: _releaseDate,
    title: _title,
    video: _video,
    voteAverage: _voteAverage,
    voteCount: _voteCount,
  );
  return object;
}

@isarProtected
dynamic deserializeMovieProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readBool(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      {
        final length = IsarCore.readList(reader, 3, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 0:
      return IsarCore.readId(reader);
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      return IsarCore.readDouble(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8) ?? '';
    case 9:
      {
        final value = IsarCore.readLong(reader, 9);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 10:
      return IsarCore.readString(reader, 10) ?? '';
    case 11:
      return IsarCore.readBool(reader, 11);
    case 12:
      return IsarCore.readDouble(reader, 12);
    case 13:
      return IsarCore.readLong(reader, 13);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _MovieUpdate {
  bool call({
    required int id,
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  });
}

class _MovieUpdateImpl implements _MovieUpdate {
  const _MovieUpdateImpl(this.collection);

  final IsarCollection<int, Movie> collection;

  @override
  bool call({
    required int id,
    Object? adult = ignore,
    Object? backdropPath = ignore,
    Object? originalLanguage = ignore,
    Object? originalTitle = ignore,
    Object? overview = ignore,
    Object? popularity = ignore,
    Object? posterPath = ignore,
    Object? releaseDate = ignore,
    Object? title = ignore,
    Object? video = ignore,
    Object? voteAverage = ignore,
    Object? voteCount = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (adult != ignore) 1: adult as bool?,
          if (backdropPath != ignore) 2: backdropPath as String?,
          if (originalLanguage != ignore) 4: originalLanguage as String?,
          if (originalTitle != ignore) 5: originalTitle as String?,
          if (overview != ignore) 6: overview as String?,
          if (popularity != ignore) 7: popularity as double?,
          if (posterPath != ignore) 8: posterPath as String?,
          if (releaseDate != ignore) 9: releaseDate as DateTime?,
          if (title != ignore) 10: title as String?,
          if (video != ignore) 11: video as bool?,
          if (voteAverage != ignore) 12: voteAverage as double?,
          if (voteCount != ignore) 13: voteCount as int?,
        }) >
        0;
  }
}

sealed class _MovieUpdateAll {
  int call({
    required List<int> id,
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  });
}

class _MovieUpdateAllImpl implements _MovieUpdateAll {
  const _MovieUpdateAllImpl(this.collection);

  final IsarCollection<int, Movie> collection;

  @override
  int call({
    required List<int> id,
    Object? adult = ignore,
    Object? backdropPath = ignore,
    Object? originalLanguage = ignore,
    Object? originalTitle = ignore,
    Object? overview = ignore,
    Object? popularity = ignore,
    Object? posterPath = ignore,
    Object? releaseDate = ignore,
    Object? title = ignore,
    Object? video = ignore,
    Object? voteAverage = ignore,
    Object? voteCount = ignore,
  }) {
    return collection.updateProperties(id, {
      if (adult != ignore) 1: adult as bool?,
      if (backdropPath != ignore) 2: backdropPath as String?,
      if (originalLanguage != ignore) 4: originalLanguage as String?,
      if (originalTitle != ignore) 5: originalTitle as String?,
      if (overview != ignore) 6: overview as String?,
      if (popularity != ignore) 7: popularity as double?,
      if (posterPath != ignore) 8: posterPath as String?,
      if (releaseDate != ignore) 9: releaseDate as DateTime?,
      if (title != ignore) 10: title as String?,
      if (video != ignore) 11: video as bool?,
      if (voteAverage != ignore) 12: voteAverage as double?,
      if (voteCount != ignore) 13: voteCount as int?,
    });
  }
}

extension MovieUpdate on IsarCollection<int, Movie> {
  _MovieUpdate get update => _MovieUpdateImpl(this);

  _MovieUpdateAll get updateAll => _MovieUpdateAllImpl(this);
}

sealed class _MovieQueryUpdate {
  int call({
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  });
}

class _MovieQueryUpdateImpl implements _MovieQueryUpdate {
  const _MovieQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Movie> query;
  final int? limit;

  @override
  int call({
    Object? adult = ignore,
    Object? backdropPath = ignore,
    Object? originalLanguage = ignore,
    Object? originalTitle = ignore,
    Object? overview = ignore,
    Object? popularity = ignore,
    Object? posterPath = ignore,
    Object? releaseDate = ignore,
    Object? title = ignore,
    Object? video = ignore,
    Object? voteAverage = ignore,
    Object? voteCount = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (adult != ignore) 1: adult as bool?,
      if (backdropPath != ignore) 2: backdropPath as String?,
      if (originalLanguage != ignore) 4: originalLanguage as String?,
      if (originalTitle != ignore) 5: originalTitle as String?,
      if (overview != ignore) 6: overview as String?,
      if (popularity != ignore) 7: popularity as double?,
      if (posterPath != ignore) 8: posterPath as String?,
      if (releaseDate != ignore) 9: releaseDate as DateTime?,
      if (title != ignore) 10: title as String?,
      if (video != ignore) 11: video as bool?,
      if (voteAverage != ignore) 12: voteAverage as double?,
      if (voteCount != ignore) 13: voteCount as int?,
    });
  }
}

extension MovieQueryUpdate on IsarQuery<Movie> {
  _MovieQueryUpdate get updateFirst => _MovieQueryUpdateImpl(this, limit: 1);

  _MovieQueryUpdate get updateAll => _MovieQueryUpdateImpl(this);
}

class _MovieQueryBuilderUpdateImpl implements _MovieQueryUpdate {
  const _MovieQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Movie, Movie, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? adult = ignore,
    Object? backdropPath = ignore,
    Object? originalLanguage = ignore,
    Object? originalTitle = ignore,
    Object? overview = ignore,
    Object? popularity = ignore,
    Object? posterPath = ignore,
    Object? releaseDate = ignore,
    Object? title = ignore,
    Object? video = ignore,
    Object? voteAverage = ignore,
    Object? voteCount = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (adult != ignore) 1: adult as bool?,
        if (backdropPath != ignore) 2: backdropPath as String?,
        if (originalLanguage != ignore) 4: originalLanguage as String?,
        if (originalTitle != ignore) 5: originalTitle as String?,
        if (overview != ignore) 6: overview as String?,
        if (popularity != ignore) 7: popularity as double?,
        if (posterPath != ignore) 8: posterPath as String?,
        if (releaseDate != ignore) 9: releaseDate as DateTime?,
        if (title != ignore) 10: title as String?,
        if (video != ignore) 11: video as bool?,
        if (voteAverage != ignore) 12: voteAverage as double?,
        if (voteCount != ignore) 13: voteCount as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension MovieQueryBuilderUpdate on QueryBuilder<Movie, Movie, QOperations> {
  _MovieQueryUpdate get updateFirst =>
      _MovieQueryBuilderUpdateImpl(this, limit: 1);

  _MovieQueryUpdate get updateAll => _MovieQueryBuilderUpdateImpl(this);
}

extension MovieQueryFilter on QueryBuilder<Movie, Movie, QFilterCondition> {
  QueryBuilder<Movie, Movie, QAfterFilterCondition> adultEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      backdropPathGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      backdropPathLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> backdropPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      genreIdsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      genreIdsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      genreIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsIsEmpty() {
    return not().genreIdsIsNotEmpty();
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> genreIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 3, value: null),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      originalLanguageGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      originalLanguageLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      originalLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      originalTitleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      originalTitleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> originalTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      overviewGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> popularityEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> popularityGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      popularityGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> popularityLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> popularityLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> popularityBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      posterPathGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> releaseDateEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> releaseDateGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      releaseDateGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> releaseDateLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      releaseDateLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> releaseDateBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> videoEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteAverageEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteAverageGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      voteAverageGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteAverageLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      voteAverageLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteAverageBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteCountEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteCountGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition>
      voteCountGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteCountLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteCountLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterFilterCondition> voteCountBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension MovieQueryObject on QueryBuilder<Movie, Movie, QFilterCondition> {}

extension MovieQuerySortBy on QueryBuilder<Movie, Movie, QSortBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> sortByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByBackdropPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByBackdropPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginalLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginalLanguageDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginalTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOriginalTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByOverviewDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPosterPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByPosterPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> sortByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }
}

extension MovieQuerySortThenBy on QueryBuilder<Movie, Movie, QSortThenBy> {
  QueryBuilder<Movie, Movie, QAfterSortBy> thenByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByAdultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByBackdropPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByBackdropPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginalLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginalLanguageDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginalTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOriginalTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByOverviewDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPosterPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByPosterPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<Movie, Movie, QAfterSortBy> thenByVoteCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }
}

extension MovieQueryWhereDistinct on QueryBuilder<Movie, Movie, QDistinct> {
  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByAdult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByBackdropPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByGenreIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByOriginalLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByOriginalTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByPosterPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<Movie, Movie, QAfterDistinct> distinctByVoteCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }
}

extension MovieQueryProperty1 on QueryBuilder<Movie, Movie, QProperty> {
  QueryBuilder<Movie, bool, QAfterProperty> adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Movie, String?, QAfterProperty> backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Movie, List<String>, QAfterProperty> genreIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Movie, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Movie, String, QAfterProperty> originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Movie, String, QAfterProperty> originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Movie, String?, QAfterProperty> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Movie, double, QAfterProperty> popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Movie, String, QAfterProperty> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Movie, DateTime, QAfterProperty> releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Movie, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Movie, bool, QAfterProperty> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Movie, double, QAfterProperty> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Movie, int, QAfterProperty> voteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}

extension MovieQueryProperty2<R> on QueryBuilder<Movie, R, QAfterProperty> {
  QueryBuilder<Movie, (R, bool), QAfterProperty> adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Movie, (R, String?), QAfterProperty> backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Movie, (R, List<String>), QAfterProperty> genreIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Movie, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Movie, (R, String), QAfterProperty> originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Movie, (R, String), QAfterProperty> originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Movie, (R, String?), QAfterProperty> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Movie, (R, double), QAfterProperty> popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Movie, (R, String), QAfterProperty> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Movie, (R, DateTime), QAfterProperty> releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Movie, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Movie, (R, bool), QAfterProperty> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Movie, (R, double), QAfterProperty> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Movie, (R, int), QAfterProperty> voteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}

extension MovieQueryProperty3<R1, R2>
    on QueryBuilder<Movie, (R1, R2), QAfterProperty> {
  QueryBuilder<Movie, (R1, R2, bool), QOperations> adultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Movie, (R1, R2, String?), QOperations> backdropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Movie, (R1, R2, List<String>), QOperations> genreIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Movie, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Movie, (R1, R2, String), QOperations>
      originalLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Movie, (R1, R2, String), QOperations> originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Movie, (R1, R2, String?), QOperations> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Movie, (R1, R2, double), QOperations> popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Movie, (R1, R2, String), QOperations> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Movie, (R1, R2, DateTime), QOperations> releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Movie, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Movie, (R1, R2, bool), QOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Movie, (R1, R2, double), QOperations> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Movie, (R1, R2, int), QOperations> voteCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}
