import 'package:go_router/go_router.dart';
import 'package:kitap/features/home/presentation/views/book_details_view.dart';
import 'package:kitap/features/home/presentation/views/home_view.dart';
import 'package:kitap/features/search/presentation/views/search_view.dart';
import 'package:kitap/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kInitialRoute = '/';
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/bookDetailsView';
  static const kSearchViewRoute = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kInitialRoute, builder: (context, state) => SplashView()),
      GoRoute(path: kHomeViewRoute, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
