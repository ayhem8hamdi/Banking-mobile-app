import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/settings/presentation/widget/edit_field_builder.dart';
import 'package:banking_app/features/settings/presentation/widget/edit_prodile_user_data.dart';
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
          EditProfileUserData(),
          SliverGap(30),
          EditProfileEditFieldsBuilder(),
          JoinDateWidget(),
        ],
      ),
    );
  }
}

class JoinDateWidget extends StatelessWidget {
  const JoinDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Spacer(),
          Text("Joined 28 Jan 2021", style: AppStyles.styleRegular14(context)),
          const Gap(64),
        ],
      ),
    );
  }
}
