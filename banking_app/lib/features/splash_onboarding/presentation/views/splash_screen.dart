import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/features/splash_onboarding/presentation/views/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      context.goNamed(AppRouter.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashScreenBody()));
  }
}
