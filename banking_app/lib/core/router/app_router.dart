import 'package:banking_app/features/splash_onboarding/presentation/views/on_boarding_screen.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashScreen = "splashScreen";
  static const String onBoardingScreen = "onBoardingScreen";

  static final GoRouter goRouter = GoRouter(
    initialLocation: '/splash',
    routes: [
      // Global Navigation
      GoRoute(
        name: splashScreen,
        path: '/splash',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        name: onBoardingScreen,
        path: '/onBoarding',
        builder: (context, state) => OnBoardingScreen(),
      ),

      /*
    // bottom Tabs Navigation
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => NavShell(navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              //Nested Navigation
              GoRoute(
                  name: home,
                  path: '/home',
                  builder: (context, state) => const HomeScreenBody(),
                  routes: [
                    GoRoute(
                      path: 'details',
                      builder: (context, state) => const HomeDetailsScreen(),
                    )
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: myCards,
                path: '/carts',
                builder: (context, state) => const CardsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: stats,
                path: '/stats',
                builder: (context, state) => const StatsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  name: parameters,
                  path: '/params',
                  builder: (context, state) => const SettingsScreen()),
            ],
          ),
        ])*/
    ],
  );
}
