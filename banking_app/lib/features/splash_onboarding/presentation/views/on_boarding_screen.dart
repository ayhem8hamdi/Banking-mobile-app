import 'package:banking_app/features/splash_onboarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OnBoardingBody()));
  }
}
