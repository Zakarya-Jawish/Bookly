import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_appbar_detials.dart';
import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppBarDetils(),
                const SizedBox(height: 25),
                BookDetailsSection(bookModel: bookModel),
                const SizedBox(height: 30),
                const SimilerBooksSection(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }
}
