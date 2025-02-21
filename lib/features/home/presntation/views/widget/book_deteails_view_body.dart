import 'package:bookly/extensions/context_ex.dart';
import 'package:bookly/features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widget/similer_books_section.dart';
import 'package:flutter/material.dart';

import '../../../presentation/views/widget/custom_appbar_detials.dart';

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
