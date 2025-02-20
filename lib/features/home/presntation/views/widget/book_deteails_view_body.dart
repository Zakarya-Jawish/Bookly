import 'package:bookly/features/home/presntation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_appbar_detials.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarDetils(),
        CustomBookImage(height: 0.22),
      ],
    );
  }
}
