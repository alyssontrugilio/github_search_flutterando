import 'package:github_search_flutterando/modules/search/domain/entities/result_search.dart';
import 'package:dartz/dartz.dart';
import 'package:github_search_flutterando/modules/search/domain/errors/errors.dart';
import 'package:github_search_flutterando/modules/search/domain/repositories/search_repository.dart';

abstract class SearchByText {
  Future<Either<FailureSearch, List<ResultSearch>>> call(String seachText);
}

class SearchByTextImpl implements SearchByText {
  final SearchRepository repository;

  SearchByTextImpl(this.repository);

  @override
  Future<Either<FailureSearch, List<ResultSearch>>> call(
      String seachText) async {
    if (seachText == null || seachText.isEmpty) {
      return Left(InvalidTextError());
    }

    return repository.search(seachText);
  }
}
