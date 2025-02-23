import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubitCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fectchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books: books));
    });
  }
}
