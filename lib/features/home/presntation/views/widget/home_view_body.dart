import 'package:bookly/extensions/context_ex.dart';
import 'package:bookly/features/home/presntation/views/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          const SizedBox(height: 10),
          Text(
            'Best Seller',
            style: context.textTheme.bodyLarge,
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}
