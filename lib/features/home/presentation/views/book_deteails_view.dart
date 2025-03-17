import 'package:bookly/core/utils/service_locater.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemnts.dart';
import 'package:bookly/features/home/presentation/manger/similer_book_cubit/similer_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/book_deteails_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => SimilerBookCubit(getIt.get<HomeRepoImplemnts>())
            ..fetchSimilerBooks(category: bookModel.volumeInfo.categories![0]),
          child: BookDetailsViewBody(
            bookModel: bookModel,
          ),
        ),
      ),
    );
  }
}
