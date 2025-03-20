import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());
  final SearchRepo searchRepo;
  Future<void> fetechSearchResult({required String subject}) async {
    emit(SearchResultLoadingState());
    var result = await searchRepo.fetchSearchResult(subject: subject);
    result.fold((failure) {
      emit(SearchResultFailureState(failure.errMessage));
    }, (books) {
      emit(SearchResultSuccessState(books: books));
    });
  }
}
