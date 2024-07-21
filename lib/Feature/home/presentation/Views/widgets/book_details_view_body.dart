import 'package:bookly/Feature/home/data/models/book_models/book_model.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/action_button.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_button_book.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/feature_book_list_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/smilier_book_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsViewBody extends StatelessWidget {
BookDetailsViewBody({super.key,required this.bookModel});
final BookModel bookModel;
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
            child: CustomListView(
              imageUrl:bookModel.volumeInfo.imageLinks?.thumbnail ??'',
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            bookModel.volumeInfo.title!,
            style: TextStyles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            bookModel.volumeInfo.authors![0],
            style: TextStyles.textStyle18.copyWith(
                color: Color(0xff707070),
                fontFamily: GoogleFonts.montserratTextTheme.toString()),
          ),
          SizedBox(
            height: 14,
          ),
          BookRating(
            rating: bookModel.volumeInfo.averageRating??0,
            counter: bookModel.volumeInfo.ratingsCount??0,
          ),
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



