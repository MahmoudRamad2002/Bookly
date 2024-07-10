import 'package:bookly/Feature/home/presentation/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        //CustomListView(),
        FeaturedBooksListView(),

      ],
    );
  }
}
class  FeaturedBooksListView extends StatelessWidget {
  const  FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
      //itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomListView(),
        );
      },

      ),
    );
  }
}


