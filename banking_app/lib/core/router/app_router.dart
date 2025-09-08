import 'package:banking_app/core/shared_widgets/bottom_nav_tab.dart';
import 'package:banking_app/features/auth/presentation/views/sign_in_screen.dart';
import 'package:banking_app/features/auth/presentation/views/sign_up_screen.dart';
import 'package:banking_app/features/home/presentation/views/home_screen.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/on_boarding_screen.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/splash_screen.dart';
import 'package:banking_app/features/stats/presentation/views/stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashScreen = "splashScreen";
  static const String onBoardingScreen = "onBoardingScreen";
  static const String signInScreen = "signInScreen";
  static const String signUpScreen = "signUpScreen";
  static const String homeScreen = "homeScreen";
  static const String myCardsScreen = "myCardsScreen";
  static const String statsScreen = "statsScreen";
  static const String settingsScreen = "settingsScreen";

  static final GoRouter goRouter = GoRouter(
    initialLocation: '/splash',
    routes: [
      // Global Navigation
      GoRoute(
        name: splashScreen,
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: onBoardingScreen,
        path: '/onBoarding',
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        name: signInScreen,
        path: '/signIn',
        builder: (context, state) => const SignInScreen(),
      ),

      GoRoute(
        name: signUpScreen,
        path: '/signUp',
        builder: (context, state) => const SignUpScreen(),
      ),

      // bottom Tabs Navigation
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => NavShell(navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              //Nested Navigation
              GoRoute(
                name: homeScreen,
                path: '/home',
                builder: (context, state) => const HomeScreen(),

                /* 
                 nested route
                 routes: [
                    GoRoute(
                      path: 'details',
                      builder: (context, state) => const HomeDetailsScreen(),
                    )
                  ]),
           */
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: myCardsScreen,
                path: '/carts',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('carts'))),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: statsScreen,
                path: '/stats',
                builder: (context, state) => const StatsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: settingsScreen,
                path: '/params',
                builder: (context, state) =>
                    const Scaffold(body: Center(child: Text('params'))),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
