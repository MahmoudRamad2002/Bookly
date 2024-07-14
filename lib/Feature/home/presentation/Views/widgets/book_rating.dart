import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/Styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const  Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const  SizedBox(
          width: 6.3,
        ),
        const  Text(
          '4.8',
          style: TextStyles.textStyle16,
        ),
        const   SizedBox(
          width: 5,
        ),
        Text('(254)',
            style: TextStyles.textStyle14.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}