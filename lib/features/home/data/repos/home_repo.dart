import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // right side to success
  Future<Either<Failure, List<BookModel>>> fectchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fectchSimilarBooks(
      {required String category});
}
