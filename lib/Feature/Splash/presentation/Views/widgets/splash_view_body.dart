import 'package:bookly/Feature/Splash/presentation/Views/widgets/sliding_text.dart';
import 'package:bookly/Feature/Splash/presentation/Views/widgets/sliding_text.dart';
import 'package:bookly/Feature/home/presentation/Views/home_view.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../constaints.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InitSlidingAnimation();
    navigateToHome();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsApp.logo),
        SlidingText(slidingAnimation:slidingAnimation)


      ],
    );
  }
  void InitSlidingAnimation(){animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2));
  slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
      .animate(animationController);
  animationController.forward();}
  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const HomeView(),transition: Transition.fade,duration:kTransitionDuration);
    });
  }}
