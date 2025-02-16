import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'featured_book_item.dart';

class BestSellarListItem extends StatelessWidget {
  const BestSellarListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FeaturedBookItem(height: 0.10),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Harry Potter and the\n Goblet of Fire',
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            Text(
              'J.K Rowling',
              style: context.textTheme.bodySmall,
            ),
            SizedBox(
              width: 250,
              child: Row(
                spacing: 5,
                children: [
                  Text(
                    '19.99\$',
                    style: context.textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const Text('4.8'),
                  Text(
                    '(2939)',
                    style: context.textTheme.bodySmall,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
