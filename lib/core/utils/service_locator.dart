import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kitap/core/utils/api_service.dart';
import 'package:kitap/features/home/data/repo/home_repo_impl.dart';
import 'package:kitap/features/search/data/repos/search_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(getIt.get<ApiService>()),
  );
}
