import 'package:bookly/Feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Feature/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_services.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
