import 'package:banking_app/core/utils/styles/app_styles.dart';
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
          SliverGap(28),
          SettingsOptionItem(),
        ],
      ),
    );
  }
}

class SettingsOptionItem extends StatelessWidget {
  const SettingsOptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  "Language",
                  style: AppStyles.styleMeduim14(
                    context,
                  ).copyWith(color: cs.onSurface),
                ),
                const Spacer(),
                Text(
                  "English",
                  style: AppStyles.styleMeduim14(
                    context,
                  ).copyWith(color: const Color(0XFF7E848D)),
                ),
                const Gap(16),
                Transform.rotate(
                  angle: 3.1416,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Color(0XFF7E848D),
                  ),
                ),
              ],
            ),
            const Gap(14),
            Container(height: 1, color: cs.outline),
          ],
        ),
      ),
    );
  }
}
