import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatsScreenBody extends StatelessWidget {
  const StatsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          slivers: [
            StatsCustomAppBar(
              text: "My Cards",
              leftIcon: Icons.arrow_back_ios_new,
              rightIcon: CupertinoIcons.add,
            ),
            SliverGap(32),
          ],
        ),
      ),
    );
  }
}
