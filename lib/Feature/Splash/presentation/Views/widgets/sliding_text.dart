import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  //const SlidingText({super.key});
  late Animation<Offset> slidingAnimation;
  SlidingText({required this.slidingAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
      return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ));});
  }
}
