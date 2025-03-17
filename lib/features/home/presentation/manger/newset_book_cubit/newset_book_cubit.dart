import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBookLoadingState());
    var result = await homeRepo.fectchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBookFailureState(failure.errMessage));
    }, (books) {
      emit(NewsetBookSuccessState(books: books));
    });
  }
}
