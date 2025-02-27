import 'package:bookly/core/widget/custom_circle_indicator.dart';
import 'package:bookly/features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccessState) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellarListItem(
              bookModel: state.books[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: state.books.length,
          );
        } else if (state is NewsetBookFailureState) {
          return ErrorWidget(state.errMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
