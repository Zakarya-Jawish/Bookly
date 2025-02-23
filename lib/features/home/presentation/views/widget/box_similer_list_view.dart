import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_book_image.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          width: 0.2,
          urlImage:
              'http://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE71ttb9F7gjEgWYTa-izBj7KghEFO2dKFV9EcfAeHd8uW6eyrQxpyARTxJGtfXQEopf2H4RldbJV0qTnhzGma1o_jrPJdPWzR2cmTm7E0aNshuP9bpPJA2G8aNfeuNxNDKScxJoP&source=gbs_api',
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 7),
        itemCount: 7,
      ),
    );
  }
}
