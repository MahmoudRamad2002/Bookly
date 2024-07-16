import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.6/4 ,
      child:Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
        color: Colors.red,
            image: DecorationImage(image: AssetImage(AssetsApp.home),
            fit: BoxFit.fill)
        ),
      ),
    );
  }
}
