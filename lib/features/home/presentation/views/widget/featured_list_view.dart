import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/custom_book_image.dart';
import '../../../../../core/widget/custom_circle_indicator.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.width * 0.54,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccessState) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: InkWell(
                  child: CustomBookImage(
                      width: 0.37,
                      urlImage:
                          state.books[index].volumeInfo.imageLinks.thumbnail!),
                  onTap: () => GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.books[index]),
                ),
              ),
              itemCount: state.books.length,
            );
          } else if (state is FeaturedBooksFailureState) {
            return CustomErrorWidget(errMessage: state.errMessage);
          }
          return const CustomCircleIndicator();
        },
      ),
    );
  }
}
