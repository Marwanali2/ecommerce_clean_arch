import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_attendence_task/core/Dependency_injection/service_locator.dart';
import 'package:route_attendence_task/core/routing/app_router.dart';
import 'package:route_attendence_task/features/home/data/repos/home_repo_impl.dart';
import 'package:route_attendence_task/features/home/domain/use_cases/fetch_products_use_case.dart';
import 'package:route_attendence_task/features/home/presentation/managers/home_products_cubit/home_products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteTask extends StatelessWidget {
  const RouteTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeProductsCubit(
              ProductsUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            )..fetchProducts(),
          ),
        ],
        child: MaterialApp.router(
             routerConfig: AppRouter.router,
          title: 'Route Task',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
         
        ),
      ),
    );
  }
}
