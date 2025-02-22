import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemnts implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fectchBestSellerBooks() {
    // TODO: implement fectchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fectchFeaturedBooks() {
    // TODO: implement fectchFeaturedBooks
    throw UnimplementedError();
  }
}
