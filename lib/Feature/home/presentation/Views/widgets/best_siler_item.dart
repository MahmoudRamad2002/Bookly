import 'package:bookly/Feature/home/presentation/Views/widgets/book_rating.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constaints.dart';
import '../../../../../core/utils/Styles.dart';
import '../../../../../core/utils/assets.dart';

class BestSilerViewItem extends StatelessWidget {
  const BestSilerViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KbookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
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
                        'Harry Potterand the Goblet of Fire',
                        style: TextStyles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'J.K. Rowling',
                      style: TextStyles.textStyle14,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: TextStyles.textStyle20.copyWith(fontWeight:FontWeight.bold),
                        ),
                       Spacer(),
                       const BookRating(
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


