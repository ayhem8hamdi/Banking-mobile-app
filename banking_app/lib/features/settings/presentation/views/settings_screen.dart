import 'package:banking_app/features/settings/presentation/widget/settings_screen_body.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: SettingsScreenBody());
  }
}
