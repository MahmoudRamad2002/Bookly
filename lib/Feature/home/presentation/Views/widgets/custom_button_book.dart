import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButtonBook extends StatelessWidget {

final Color backgraoundcolor;
final Color textcolor;
final BorderRadius? borderRadius;
final String text;
final  double? fontSize ;
const CustomButtonBook({super.key ,required this.textcolor, this.borderRadius, required this.backgraoundcolor, required this.text,  this.fontSize});
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 48,

      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
                  backgroundColor: backgraoundcolor,
              shape:  RoundedRectangleBorder(
                  borderRadius:borderRadius ?? BorderRadius.circular(16))
              // backgroundColor: Colors.white,
              ),
          //Free preview
          child: Text(
            text,
            style: TextStyles.textStyle18.copyWith(
                color: textcolor, fontWeight: FontWeight.w900,
            fontSize: fontSize),
          )),
    );
  }
}
