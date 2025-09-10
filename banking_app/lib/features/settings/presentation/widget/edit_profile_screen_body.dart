import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          StatsCustomAppBar(
            text: "Edit Profile",
            leftIcon: Icons.arrow_back_ios_new,
          ),
          SliverGap(32),
        ],
      ),
    );
  }
}
