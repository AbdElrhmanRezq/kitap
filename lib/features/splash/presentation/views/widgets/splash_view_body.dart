import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:kitap/consts.dart';
import 'package:kitap/core/utils/assets.dart';
import 'package:kitap/features/home/presentation/views/home_view.dart';
import 'package:kitap/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();

    goToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo, width: width * 0.2, height: height * 0.2),
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }

  void initAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 50),
      end: Offset.zero,
    ).animate(controller);
    controller.forward();
  }

  void goToHomeView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      );
    });
  }
}
