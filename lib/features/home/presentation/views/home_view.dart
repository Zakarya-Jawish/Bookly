import 'package:bookly/core/utils/service_locater.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemnts.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImplemnts>())),
        BlocProvider(
            create: (context) =>
                NewsetBookCubit(getIt.get<HomeRepoImplemnts>())),
      ],
      child: const SafeArea(
        child: Scaffold(
          body: HomeViewBody(),
        ),
      ),
    );
  }
}
