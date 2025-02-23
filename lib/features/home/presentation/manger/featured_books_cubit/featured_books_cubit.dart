import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubitCubit() : super(FeaturedBooksInitialState());
}
