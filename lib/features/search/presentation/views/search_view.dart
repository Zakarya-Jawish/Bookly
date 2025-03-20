import 'package:bookly/core/utils/service_locater.dart';
import 'package:bookly/features/search/data/repos/search_repo_implemnts.dart';
import 'package:bookly/features/search/presentation/manger/search_result_cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              SearchResultCubit(getIt.get<SearchRepoImplemnts>()),
          child: const SearchViewBody(),
        ),
      ),
    );
  }
}
