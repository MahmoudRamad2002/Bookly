import 'package:bookly/Feature/home/presentation/Views/home_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../Feature/Splash/presentation/Views/splash_view.dart';

abstract class AppRouter{
 static const KbookDetails='/bookDetails';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/bookDetails',
        builder: (context, state) => BookDetailsView(),
      ),

    ],

  );
}