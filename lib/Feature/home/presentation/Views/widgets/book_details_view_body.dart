import 'package:bookly/Feature/home/presentation/Views/widgets/action_button.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_button_book.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/feature_book_list_view.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var hiegh = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomListView(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: TextStyles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Rudyard Kipling',
            style: TextStyles.textStyle18.copyWith(
                color: Color(0xff707070),
                fontFamily: GoogleFonts.montserratTextTheme.toString()),
          ),
          SizedBox(
            height: 14,
          ),
          BookRating(),
          SizedBox(
            height: 37,
          ),
           ActionButton(),
          SizedBox(
            height: 37,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You can also like',
                style: TextStyles.textStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: GoogleFonts.montserratTextTheme.toString(),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          SimilarBookListView(),
        ],
      ),
    );
  }
}

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        //itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomListView(),
          );
        },

      ),
    );;
  }
}

