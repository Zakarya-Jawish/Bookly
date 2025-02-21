import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.width * 0.54,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => const CustomBookImage(width: 0.37),
        itemCount: 5,
      ),
    );
  }
}
