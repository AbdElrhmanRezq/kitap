import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:kitap/core/utils/app_router.dart';
import 'package:kitap/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.logo, height: 60),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchViewRoute);
          },
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
          iconSize: 24,
        ),
      ],
    );
  }
}
