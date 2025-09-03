import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark
        ? true
        : false;
    final double width = MediaQuery.of(context).size.width;
    return Center(
      child: AspectRatio(
        aspectRatio: 178 / 125.94,
        child: Image.asset(
          isDark ? ImageAssets.darkSplashLogo : ImageAssets.lightSplashLogo,
          width: width * 0.95,
        ),
      ),
    );
  }
}
