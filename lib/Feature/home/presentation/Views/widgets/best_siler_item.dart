import 'package:bookly/Feature/home/data/models/book_models/book_model.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_rating.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/custom_list_view.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constaints.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/assets.dart';

class BestSilerViewItem extends StatelessWidget {
   BestSilerViewItem({super.key,required this.bookModel});
 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetails,
        extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              CustomListView(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail ,
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
bookModel.volumeInfo.title !,                       style: TextStyles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
bookModel.volumeInfo.authors![0],                      style: TextStyles.textStyle14,
                    ),
                    Row(
                      children: [
                        Text(
                          'free',
                          style: TextStyles.textStyle20.copyWith(fontWeight:FontWeight.bold),
                        ),
                       Spacer(),
                        BookRating(
                         rating: bookModel.volumeInfo.averageRating??0   ,
                          counter: bookModel.volumeInfo.ratingsCount??0,
                       )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


