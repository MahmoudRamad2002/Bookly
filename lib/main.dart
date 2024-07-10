import 'package:bookly/constaints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Feature/Splash/presentation/Views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor:kPrimaryColor),
      home:const SplashView(),

    );
  }
}

