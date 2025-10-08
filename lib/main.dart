import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitap/consts.dart';
import 'package:kitap/features/splash/presentation/views/splash_view.dart';

void main(List<String> args) {
  runApp(Kitap());
}

class Kitap extends StatelessWidget {
  const Kitap({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );
  }
}
