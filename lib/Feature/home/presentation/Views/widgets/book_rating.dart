import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  //final MainAxisAlignment? mainAxisAlignment;
final num rating;

final int counter;
const BookRating({super.key,
  required this.counter,
  required this.rating
//this.mainAxisAlignment
}
 );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const  Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const  SizedBox(
          width: 6.3,
        ),
          Text(
          rating.toString(),
          style: TextStyles.textStyle16,
        ),
        const   SizedBox(
          width: 5,
        ),
        Text('($counter)',
            style: TextStyles.textStyle14.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}