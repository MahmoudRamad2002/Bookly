import 'package:bookly/Feature/home/data/models/book_models/book_model.dart';
import 'package:bookly/Feature/home/data/repos/home_repo.dart';
import 'package:bookly/Feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feature/home/presentation/Views/home_view.dart';
import 'package:bookly/Feature/home/presentation/Views/widgets/book_details_view.dart';
import 'package:bookly/Feature/home/presentation/manger/similer_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Feature/search/presentation/views/sreach_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Feature/Splash/presentation/Views/splash_view.dart';

abstract class AppRouter{
 static const kBookDetails='/bookDetails';
 static const kSearch='/search';

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
        path:kSearch,
        builder: (context, state) => SearchView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
    ],

  );
}