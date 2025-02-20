import 'package:bookly/constants.dart';
import 'package:bookly/extensions/context_ex.dart';
import 'package:bookly/features/home/presntation/views/widget/book_rating.dart';
import 'package:bookly/features/home/presntation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'boox_action.dart';
import 'custom_appbar_detials.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomAppBarDetils(),
        const SizedBox(height: 25),
        const CustomBookImage(width: 0.45),
        const SizedBox(height: 20),
        Text(
          'Harry Potter and the Goblet of Fire',
          style:
              context.textTheme.bodyLarge!.copyWith(fontFamily: kGTSectraFont),
        ),
        Opacity(
          opacity: .8,
          child: Text(
            'J.K Rowling',
            style: context.textTheme.bodyMedium!.copyWith(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(),
        const SizedBox(height: 30),
        const BoxAction()
      ],
    );
  }
}
