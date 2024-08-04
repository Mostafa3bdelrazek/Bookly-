import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'newest_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.white,
      backgroundColor: Colors.transparent,
      onRefresh: () {
        BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
        return BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
      },
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                const FeaturedBooksListView(),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Newest Books',
                    style: Styles.textStyle18.copyWith(
                      fontFamily: baseFont,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: NewestBooksListView(),
            ),
          )
        ],
      ),
    );
  }
}
