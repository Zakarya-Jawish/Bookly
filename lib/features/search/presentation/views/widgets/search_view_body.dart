import 'package:bookly/features/search/presentation/manger/search_result_cubit/search_result_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          CustomSearchTextField(
            textEditingController: textEditingController,
            onPressed: () async {
              await BlocProvider.of<SearchResultCubit>(context)
                  .fetechSearchResult(subject: textEditingController.text);
            },
          ),
          const SizedBox(height: 20),
          const Text('Search result:'),
          const SizedBox(height: 20),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }
}
