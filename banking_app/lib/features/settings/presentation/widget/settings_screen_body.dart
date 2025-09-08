import 'package:banking_app/core/utils/styles/app_styles.dart';
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
        ],
      ),
    );
  }
}

class SettingsTitles extends StatelessWidget {
  const SettingsTitles({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Text(text, style: AppStyles.styleRegular14(context)),
      ),
    );
  }
}
