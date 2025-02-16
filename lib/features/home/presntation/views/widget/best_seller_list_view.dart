import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const BestSellarListItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 5,
      ),
    );
  }
}
