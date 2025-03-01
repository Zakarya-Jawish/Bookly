import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/core/widget/custom_circle_indicator.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/similer_book_cubit/similer_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_book_image.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      child: BlocBuilder<SimilerBookCubit, SimilerBookState>(
        builder: (context, state) {
          if (state is SimilerBookSuccessState) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) => SizedBox(
                width: 7,
                child: CustomBookImage(
                  width: 0.2,
                  urlImage: state.books[index].volumeInfo.imageLinks.thumbnail!,
                ),
              ),
            );
          } else if (state is SimilerBookFailureState) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomCircleIndicator();
          }
        },
      ),
    );
  }
}
