import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/extensions/context_ex.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';
import 'custom_book_image.dart';

class BestSellarListItem extends StatelessWidget {
  const BestSellarListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          const CustomBookImage(width: 0.22),
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
                      const BookRating(),
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
