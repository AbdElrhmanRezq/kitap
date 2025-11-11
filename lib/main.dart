import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitap/consts.dart';
import 'package:kitap/core/utils/app_router.dart';
import 'package:kitap/core/utils/service_locator.dart';
import 'package:kitap/features/home/data/repo/home_repo_impl.dart';
import 'package:kitap/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:kitap/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:kitap/features/splash/presentation/views/splash_view.dart';

void main(List<String> args) {
  runApp(Kitap());
}

class Kitap extends StatelessWidget {
  const Kitap({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
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
      ),
    );
  }
}
