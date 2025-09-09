import 'package:banking_app/features/settings/domain/settings_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/setting_option_item.dart';
import 'package:banking_app/features/settings/presentation/widget/settings_titles.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          StatsCustomAppBar(
            text: "Settings",
            leftIcon: Icons.arrow_back_ios_new,
            rightIcon: Icons.logout_outlined,
          ),
          SliverGap(32),
          SettingsTitles(text: "General"),
          SliverGap(23),
          GeneralSettingsOptionsBuilder(),
        ],
      ),
    );
  }
}

class GeneralSettingsOptionsBuilder extends StatelessWidget {
  const GeneralSettingsOptionsBuilder({super.key});

  static final List<SettingsOptionsModel> list = const [
    SettingsOptionsModel(settingOption: "Language", language: "English"),
    SettingsOptionsModel(settingOption: "My Profile"),
    SettingsOptionsModel(settingOption: "Contact Us"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: SettingsOptionItem(settingsOptionsModel: list[index]),
          ),
        ),
      ),
    );
  }
}
