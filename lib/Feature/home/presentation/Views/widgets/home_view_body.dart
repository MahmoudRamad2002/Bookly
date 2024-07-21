import 'package:bookly/Feature/home/presentation/Views/widgets/best_siler_item.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/best_siler_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/feature_book_list_view.dart';
import 'package:bookly/constaints.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child:
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                FeaturedBooksListView(),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: const Text(
                    'Newset Books',
                    style: TextStyles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
        ),
        SliverToBoxAdapter(child:BestSillerListView() ,)
      ],
    );

  }
}

