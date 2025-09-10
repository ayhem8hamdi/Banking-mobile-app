import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/features/settings/domain/profile_options_model.dart';
import 'package:banking_app/features/settings/presentation/widget/profile_options_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileOptionsListBuilder extends StatelessWidget {
  const ProfileOptionsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileOptionsModel> list = [
      ProfileOptionsModel(
        icon: ImageAssets.userProfile,
        title: "Personal Information",
        onTap: () => context.pushNamed(AppRouter.editProfileScreen),
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
        isNotif: true,
      ),
      ProfileOptionsModel(
        icon: ImageAssets.messagesCenter,
        title: "Message Center",
      ),
      ProfileOptionsModel(icon: ImageAssets.location, title: "Address"),
      ProfileOptionsModel(
        icon: ImageAssets.settings,
        title: "Settings",
        isLast: true,
      ),
    ];
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
