import 'package:banking_app/features/settings/domain/settings_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/setting_option_item.dart';
import 'package:flutter/material.dart';

class SecuritySettingsOptionsBuilder extends StatelessWidget {
  const SecuritySettingsOptionsBuilder({super.key});

  static final List<SettingsOptionsModel> list = const [
    SettingsOptionsModel(settingOption: "Change Password"),
    SettingsOptionsModel(settingOption: "Privacy Policy", isLast: true),
  ];
  @override
  Widget build(BuildContext context) {
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
