import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'featured_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeaturedBookItem(
          height: 0.17,
        ),
        itemCount: 5,
      ),
    );
  }
}
