import 'package:bookly/constaints.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Feature/Splash/presentation/Views/splash_view.dart';
import 'Feature/home/data/repos/home_repo_impl.dart';
import 'Feature/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'Feature/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) => NewsetBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchNewestBooks(),
          )
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        ));
  }
}
//https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg