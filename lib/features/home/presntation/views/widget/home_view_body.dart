import 'package:bookly/features/home/presntation/views/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 10,
        children: [
          CustomAppBar(),
          const CustomListViewItem(),
        ],
      ),
    );
  }
}
