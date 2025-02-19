import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BestSellarListItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
