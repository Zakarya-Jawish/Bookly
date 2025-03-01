import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'similer_book_state.dart';

class SimilerBookCubit extends Cubit<SimilerBookState> {
  SimilerBookCubit() : super(SimilerBookInitial());
}
