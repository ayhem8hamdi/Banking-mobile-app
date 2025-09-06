import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/responsive_image.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Row(
          children: [
            AppBarImage(),
            Gap(16),
            AppBarTexts(),
            Spacer(),
            CustomCircleAvatarIcon(icon: Icons.search_sharp),
          ],
        ),
      ),
    );
  }
}

class AppBarImage extends StatelessWidget {
  const AppBarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveImage(
      imageProvider: AssetImage(ImageAssets.userPng),
      imageDesignWidth: 55,
      screenDesignWidth: 375.5,
      imageDesignAspectRatio: 1,
    );
  }
}

class AppBarTexts extends StatelessWidget {
  const AppBarTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome back,", style: AppStyles.styleRegular12(context)),
        const Gap(8),
        Text("Tanya Myroniuk", style: AppStyles.styleMeduim18(context)),
      ],
    );
  }
}
