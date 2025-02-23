part of 'newset_book_cubit.dart';

@immutable
sealed class NewsetBookState {}

final class NewsetBookInitial extends NewsetBookState {}

final class NewsetBookInitialState extends NewsetBookState {}

final class NewsetBookLoadingState extends NewsetBookState {}

final class NewsetBookSuccessState extends NewsetBookState {
  final List<BookModel> books;
  NewsetBookSuccessState({required this.books});
}

final class NewsetBookFailureState extends NewsetBookState {
  final String errMessage;
  NewsetBookFailureState(this.errMessage);
}
