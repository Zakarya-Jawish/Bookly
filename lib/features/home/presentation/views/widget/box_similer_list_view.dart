import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(width: 0.2),
        separatorBuilder: (context, index) => const SizedBox(width: 7),
        itemCount: 7,
      ),
    );
  }
}
