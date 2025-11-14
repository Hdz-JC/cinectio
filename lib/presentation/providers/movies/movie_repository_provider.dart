import 'package:cinecito/domain/repositories/movies_repository.dart';
import 'package:cinecito/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinecito/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref){
  final MoviesRepository repository = MovieRepositoryImpl(MoviedbDatasource());
  return repository;
});