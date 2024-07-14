import 'package:route_attendence_task/core/routing/routes.dart';
import 'package:route_attendence_task/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.kMain,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
