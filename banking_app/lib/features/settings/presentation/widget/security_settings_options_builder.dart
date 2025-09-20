import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/features/settings/domain/settings_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/setting_option_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecuritySettingsOptionsBuilder extends StatelessWidget {
  const SecuritySettingsOptionsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingsOptionsModel> list = [
      const SettingsOptionsModel(settingOption: "Change Password"),
      SettingsOptionsModel(
        settingOption: "Privacy Policy",
        isLast: true,
        onTap: () => context.goNamed(AppRouter.termsAndConditions),
      ),
    ];
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: SettingsOptionItem(settingsOptionsModel: list[index]),
          ),
        ),
      ),
    );
  }
}
