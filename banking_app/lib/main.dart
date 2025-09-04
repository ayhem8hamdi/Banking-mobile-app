import 'package:banking_app/core/constants/constants.dart';
import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/core/services/shared_prefs.dart';
import 'package:banking_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  await SharedPrefsSingelton.init();
  SharedPrefsSingelton.setBool(kOnBoardingSharedPrefsKey, false);
  runApp(DevicePreview(enabled: true, builder: (context) => BankingApp()));
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.goRouter,
    );
  }
}
