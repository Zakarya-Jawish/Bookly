import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/custom_book_image.dart' show CustomBookImage;
import 'package:flutter/material.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/core/extensions/context_ex.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/book_rating.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          const CustomBookImage(
            width: 0.22,
            urlImage:
                'http://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71ttb9F7gjEgWYTa-izBj7KghEFO2dKFV9EcfAeHd8uW6eyrQxpyARTxJGtfXQEopf2H4RldbJV0qTnhzGma1o_jrPJdPWzR2cmTm7E0aNshuP9bpPJA2G8aNfeuNxNDKScxJoP&source=gbs_api',
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.width * .6,
                  child: Text(
                    'Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                        fontFamily: kGTSectraFont),
                  ),
                ),
                Text(
                  'J.K Rowling',
                  style: context.textTheme.bodySmall,
                ),
                SizedBox(
                  width: 250,
                  child: Row(
                    children: [
                      Text(
                        '19.99\$',
                        style: context.textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                      const BookRating(
                        ratting: 4.5,
                        count: 9092,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
