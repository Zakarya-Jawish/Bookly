import 'package:bookly/constants.dart';
import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/book_rating.dart';
import 'boox_action.dart';
import '../../../../../core/widget/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookImage(width: 0.45),
        const SizedBox(height: 20),
        Text(
          'Harry Potter and the Goblet of Fire',
          textAlign: TextAlign.center,
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
        const BoxAction(),
      ],
    );
  }
}
