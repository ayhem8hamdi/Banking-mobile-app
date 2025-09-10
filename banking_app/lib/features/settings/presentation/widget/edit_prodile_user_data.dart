import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/responsive_image.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfileUserData extends StatelessWidget {
  const EditProfileUserData({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ResponsiveImage(
            imageDesignWidth: 95,
            screenDesignWidth: 375.5,
            imageDesignAspectRatio: 1,
            imageProvider: AssetImage(ImageAssets.userPng),
          ),
          const Gap(17),
          Text("Tanya Myroniuk", style: AppStyles.styleMeduim17(context)),
          const Gap(10),
          Text("Flutter Developer", style: AppStyles.styleRegular12(context)),
        ],
      ),
    );
  }
}
