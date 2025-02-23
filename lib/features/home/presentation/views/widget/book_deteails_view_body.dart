import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_appbar_detials.dart';
import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SizedBox(
            height: context.height - 40,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBarDetils(),
                  SizedBox(height: 25),
                  BookDetailsSection(),
                  Expanded(child: SizedBox(height: 30)),
                  SimilerBooksSection(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
