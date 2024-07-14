
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:width * .17 ),
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}

