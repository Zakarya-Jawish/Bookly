part of 'similer_book_cubit.dart';

@immutable
sealed class SimilerBookState {}

final class SimilerBookInitial extends SimilerBookState {}

final class SimilerBookInitialState extends SimilerBookState {}

final class SimilerBookLoadingState extends SimilerBookState {}

final class SimilerBookSuccessState extends SimilerBookState {
  final List<BookModel> books;
  SimilerBookSuccessState({required this.books});
}

final class SimilerBookFailureState extends SimilerBookState {
  final String errMessage;
  SimilerBookFailureState(this.errMessage);
}
