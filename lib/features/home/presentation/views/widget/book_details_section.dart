import 'package:bookly/constants.dart';
import 'package:bookly/core/extensions/context_ex.dart';
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
        const CustomBookImage(
          width: 0.45,
          urlImage:
              'http://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71ttb9F7gjEgWYTa-izBj7KghEFO2dKFV9EcfAeHd8uW6eyrQxpyARTxJGtfXQEopf2H4RldbJV0qTnhzGma1o_jrPJdPWzR2cmTm7E0aNshuP9bpPJA2G8aNfeuNxNDKScxJoP&source=gbs_api',
        ),
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
