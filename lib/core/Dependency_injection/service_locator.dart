import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_attendence_task/core/utils/api_services.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_local_data_source.dart';
import 'package:route_attendence_task/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:route_attendence_task/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiServices>()),

    ),
  );
}
