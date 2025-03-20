import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widget/custom_book_image.dart' show CustomBookImage;
import 'package:flutter/material.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/core/extensions/context_ex.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/book_rating.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: Row(
        children: [
          CustomBookImage(
              width: 0.22,
              urlImage: bookModel.volumeInfo.imageLinks.thumbnail!),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.width * .6,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                        fontFamily: kGTSectraFont),
                  ),
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: context.textTheme.bodySmall,
                ),
                SizedBox(
                  width: 250,
                  child: Row(
                    children: [
                      Text(
                        'Free',
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
