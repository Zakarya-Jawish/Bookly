part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitialState extends FeaturedBooksState {}

final class FeaturedBooksLoadingState extends FeaturedBooksState {}

final class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccessState({required this.books});
}

final class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;
  FeaturedBooksFailureState(this.errMessage);
}
