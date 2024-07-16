import 'package:bookly/Feature/home/presentation/Views/widgets/custom_button_book.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButtonBook(
              textcolor: Colors.black,
              backgraoundcolor: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(16),topLeft: Radius.circular(16)),
              text: '19.99€',

            ),
          ),
          Expanded(
            child: CustomButtonBook(
              textcolor: Colors.white,
              backgraoundcolor: Color(0xFFEF8262),
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(16),topRight: Radius.circular(16)),
              text: 'Free preview',
              fontSize: 16,

            ),
          ),
        ],
      ),
    );
  }
}