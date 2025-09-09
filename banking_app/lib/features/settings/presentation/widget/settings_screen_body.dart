import 'package:banking_app/features/settings/presentation/widget/general_settings_options_builder.dart';
import 'package:banking_app/features/settings/presentation/widget/security_settings_options_builder.dart';
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
          SliverGap(20),
          GeneralSettingsOptionsBuilder(),
          SliverGap(5),
          SettingsTitles(text: "Security"),
          SliverGap(20),
          SecuritySettingsOptionsBuilder(),
        ],
      ),
    );
  }
}
