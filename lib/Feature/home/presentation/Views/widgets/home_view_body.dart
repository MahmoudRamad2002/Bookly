import 'package:bookly/Feature/home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/feature_book_list_view.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/Styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Siler',
            style: TextStyles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSilerViewItem(),
        ],
      ),
    );
  }
}

class BestSilerViewItem extends StatelessWidget {
  const BestSilerViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(AssetsApp.home), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*.5,
                  child: Text('Harry Potterand the Goblet of Fire',style: TextStyles.textStyle20,
                  maxLines: 2,
                   overflow: TextOverflow.ellipsis,))
            ],
          )
        ],
      ),
    );
  }
}
