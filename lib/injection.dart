import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:the_black_web/bloc/app_bloc.dart';
import 'package:the_black_web/repositories/account_repository.dart';
import 'package:the_black_web/repositories/account_repository_imp.dart';
import 'package:the_black_web/services/rest_api.dart';

final getIt = GetIt.instance;

Future<void> setup() async{
  getIt.registerFactory(() => AppBloc(accountRepository: getIt()));

  getIt.registerLazySingleton<AccountRepository>(() => AccountRepositoryImp(restClient: getIt()));

  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => RestClient(getIt()));
}