import 'package:bookly/core/widget/custom_circle_indicator.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/search/presentation/manger/search_result_cubit/search_result_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/book_search_result_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccessState) {
          return ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SearchResultItem(
                bookModel: state.books[index],
              ),
            ),
            itemCount: state.books.length,
          );
        } else if (state is SearchResultLoadingState) {
          return const CustomCircleIndicator();
        } else if (state is SearchResultFailureState) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomErrorWidget(
              errMessage: 'What is the topic you are interested in?');
        }
      },
    );
  }
}
