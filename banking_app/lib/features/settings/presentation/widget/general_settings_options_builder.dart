import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/features/settings/domain/settings_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/setting_option_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GeneralSettingsOptionsBuilder extends StatelessWidget {
  const GeneralSettingsOptionsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingsOptionsModel> list = [
      const SettingsOptionsModel(
        settingOption: "Language",
        language: "English",
      ),
      SettingsOptionsModel(
        settingOption: "My Profile",
        onTap: () => context.pushNamed(AppRouter.profileScreen),
      ),
      const SettingsOptionsModel(settingOption: "Contact Us"),
    ];
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: SettingsOptionItem(settingsOptionsModel: list[index]),
          ),
        ),
      ),
    );
  }
}
