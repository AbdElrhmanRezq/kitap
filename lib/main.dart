import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
      darkTheme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(foregroundColor: Colors.white),
        ),
        textTheme: GoogleFonts.montserratTextTheme().apply(
          bodyColor: Colors.white,
        ),
      ),
      home: SplashView(),
    );
  }
}
