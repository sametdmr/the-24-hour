// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:the_24_hour/feature/auth/data/datasource/auth_token_local_data_source.dart';
import 'package:the_24_hour/feature/auth/data/datasource/auth_token_remote_data_source.dart';
import 'package:the_24_hour/feature/auth/data/model/auth_token_model.dart';
import 'package:the_24_hour/feature/auth/data/repository/login_repository_impl.dart';
import 'package:the_24_hour/feature/auth/domain/repository/login_repository.dart';
import 'package:the_24_hour/feature/auth/domain/usecase/login_with_email_and_password.dart';
import 'package:the_24_hour/feature/auth/presentation/cubit/login_cubit.dart';
import 'package:the_24_hour/product/constant/hive_constants.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  // Feature - Auth

  // Bloc
  sl.registerFactory<LoginCubit>(
    () => LoginCubit(loginNormal: sl()),
  );
  // Use case
  sl.registerLazySingleton<LoginWithEmailAndPassword>(
    () => LoginWithEmailAndPassword(sl()),
  );
  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      localDataSource: sl(),
      remoteDataSource: sl(),
    ),
  );
  // Data sources
  sl.registerLazySingleton<AuthTokenLocalDataSource>(
    () => AuthTokenLocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<AuthTokenRemoteDataSource>(
    () => AuthTokenRemoteDataSourceImpl(sl()),
  );

  // External
  await Hive.initFlutter(HiveConstants.fileName);
  Hive.registerAdapter<AuthTokenModel>(AuthTokenModelAdapter());
  await Hive.openBox<AuthTokenModel>(HiveConstants.authTokenModelKey);

  sl.registerLazySingleton<HiveInterface>(() => Hive);
  sl.registerLazySingleton<http.Client>(http.Client.new);
}