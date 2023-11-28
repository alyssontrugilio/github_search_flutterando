import 'package:dartz/dartz.dart';

import 'package:github_search_flutterando/modules/search/domain/entities/result_search.dart';

import 'package:github_search_flutterando/modules/search/domain/errors/errors.dart';
import 'package:github_search_flutterando/modules/search/infra/datasources/search_datasource.dart';

import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource dataSource;

  SearchRepositoryImpl(this.dataSource);

  @override
  Future<Either<FailureSearch, List<ResultSearch>>> search(String seachText) async {
    try {
      final result = await dataSource.getSearch(seachText);
      return Right(result); 
    } on DataSourceError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
