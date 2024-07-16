import 'package:bookly/Feature/search/presentation/views/widget/custom_search_text_filed.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import '../../../../home/presentation/Views/widgets/best_siler_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchFild(),
        ),SizedBox(height: 16,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'result search',
              style: TextStyles.textStyle20,
            ),
          ),
        ),
        SizedBox(height: 16,),
        Expanded(child: SeachListView()),

      ],
    );
  }
}

class SeachListView extends StatelessWidget {
  const SeachListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSilerViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
