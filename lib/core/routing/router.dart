import 'package:app_heart_link/core/routing/route_paths.dart';
import 'package:app_heart_link/presentation/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(path: RoutePaths.splash, builder: (context, state) => SplashView()),
  ],
);
