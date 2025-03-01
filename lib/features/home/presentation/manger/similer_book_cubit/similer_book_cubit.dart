import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similer_book_state.dart';

class SimilerBookCubit extends Cubit<SimilerBookState> {
  SimilerBookCubit(this.homeRepo) : super(SimilerBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerBookLoadingState());
    var result = await homeRepo.fectchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilerBookFailureState(failure.errMessage));
    }, (books) {
      emit(SimilerBookSuccessState(books: books));
    });
  }
}
