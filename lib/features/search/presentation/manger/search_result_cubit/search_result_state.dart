part of 'search_result_cubit.dart';

@immutable
sealed class SearchResultState {}

final class SearchResultInitial extends SearchResultState {}

final class SearchResultLoadingState extends SearchResultState {}

final class SearchResultSuccessState extends SearchResultState {
  final List<BookModel> books;
  SearchResultSuccessState({required this.books});
}

final class SearchResultFailureState extends SearchResultState {
  final String errMessage;
  SearchResultFailureState(this.errMessage);
}
