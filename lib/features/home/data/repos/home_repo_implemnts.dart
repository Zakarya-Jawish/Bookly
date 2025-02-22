import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemnts implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplemnts(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fectchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programing');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      e.toString();
      return left(FailureServer());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks() {
    throw UnimplementedError();
  }
}
