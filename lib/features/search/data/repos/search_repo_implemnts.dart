import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplemnts implements SearchRepo {
  final ApiService apiService;
  SearchRepoImplemnts(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String subject}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:$subject');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(FailureServer.fromDioError(e));
      }
      return left(FailureServer(e.toString()));
    }
  }
}
