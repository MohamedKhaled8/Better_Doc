import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bestdoctorappointmentapp/core/networking/dio_factory.dart';
import 'package:bestdoctorappointmentapp/core/networking/api_services.dart';
import 'package:bestdoctorappointmentapp/features/login/logic/cubit/login_cubit.dart';
import 'package:bestdoctorappointmentapp/features/login/data/repos/login_repo_imp.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///login
  getIt.registerLazySingleton<LoginRepoImp>(() => LoginRepoImp(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
