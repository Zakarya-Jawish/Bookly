import 'package:bookly/constants.dart';
import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/book_rating.dart';
import 'boox_action.dart';
import '../../../../../core/widget/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          width: 0.45,
          urlImage: bookModel.volumeInfo.imageLinks.thumbnail!,
        ),
        const SizedBox(height: 20),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style:
              context.textTheme.bodyLarge!.copyWith(fontFamily: kGTSectraFont),
        ),
        Opacity(
          opacity: .8,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: context.textTheme.bodyMedium!.copyWith(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(
          ratting: 4.5,
          count: 9092,
        ),
        const SizedBox(height: 30),
        const BoxAction(),
      ],
    );
  }
}
