import 'package:bookly/features/search/presentation/views/widgets/book_search_result_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const SearchResultItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
