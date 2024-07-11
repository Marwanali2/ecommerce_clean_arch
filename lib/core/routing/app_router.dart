import 'package:flutter/material.dart';
import 'package:route_attendence_task/core/routing/routes.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.kMain:
        return MaterialPageRoute(
          builder: (_) => const SizedBox(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
 
  }
}

/* import 'package:go_router/go_router.dart';
import 'package:marovies/core/routing/routes.dart';
import 'package:marovies/features/home/presentation/views/home_view.dart';
import 'package:marovies/splash_view.dart';
abstract class AppRouter {
  

  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: Routes.kMain,
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: Routes.kHome,
      builder: (context, state) {
        return const HomeView();
      },
    ),
  
  ]);
}
 */