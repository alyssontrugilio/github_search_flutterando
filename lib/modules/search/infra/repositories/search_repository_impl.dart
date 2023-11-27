import 'package:dartz/dartz.dart';

import 'package:github_search_flutterando/modules/search/domain/entities/result_search.dart';

import 'package:github_search_flutterando/modules/search/domain/errors/errors.dart';

import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<Either<FailureSearch, List<ResultSearch>>> search(String seachText) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
