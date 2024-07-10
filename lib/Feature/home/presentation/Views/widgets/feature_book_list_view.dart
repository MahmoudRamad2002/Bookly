import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListView(),
          );
        },

      ),
    );
  }
}
