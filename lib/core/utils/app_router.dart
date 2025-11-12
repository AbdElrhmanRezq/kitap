import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kitap/core/utils/service_locator.dart';
import 'package:kitap/features/home/data/model/book_model/book_model.dart';
import 'package:kitap/features/home/data/repo/home_repo.dart';
import 'package:kitap/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
          child: BookDetailsView(book: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
