import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/settings/domain/profile_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/profile_options_item.dart';
import 'package:banking_app/features/settings/presentation/widget/user_image_and_name.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          StatsCustomAppBar(
            text: "Profile",
            leftIcon: Icons.arrow_back_ios_new,
            rightIcon: Icons.manage_accounts_outlined,
          ),
          SliverGap(32),
          UserImageAndName(),
          SliverGap(32),
          ProfileOptionsListBuilder(),
        ],
      ),
    );
  }
}

class ProfileOptionsListBuilder extends StatelessWidget {
  const ProfileOptionsListBuilder({super.key});
  static final List<ProfileOptionsModel> list = [
    ProfileOptionsModel(
      icon: ImageAssets.userProfile,
      title: "Personal Information",
    ),
    ProfileOptionsModel(
      icon: ImageAssets.paymentPrefs,
      title: "Payment Preferences",
    ),
    ProfileOptionsModel(
      icon: ImageAssets.banksAndCards,
      title: "Banks and Cards",
    ),
    ProfileOptionsModel(
      icon: ImageAssets.notifications,
      title: "Notifications",
    ),
    ProfileOptionsModel(
      icon: ImageAssets.messagesCenter,
      title: "Message Center",
    ),
    ProfileOptionsModel(icon: ImageAssets.location, title: "Address"),
    ProfileOptionsModel(icon: ImageAssets.settings, title: "Settings"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: ProfileOptionsItem(profileOptionsModel: list[index]),
          ),
        ),
      ),
    );
  }
}
