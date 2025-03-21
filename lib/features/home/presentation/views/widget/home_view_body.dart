import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/features/home/presentation/views/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Best Seller',
                  style: context.textTheme.bodyLarge,
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
