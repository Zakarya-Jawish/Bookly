import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'box_similer_list_view.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        Text(
          'You can also like',
          style: context.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SimilerBookListView(),
      ],
    );
  }
}
