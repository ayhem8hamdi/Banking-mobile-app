import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/responsive_image.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(slivers: [HomeAppBar()]),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            const ResponsiveImage(
              imageProvider: AssetImage(ImageAssets.userPng),
              imageDesignWidth: 55,
              screenDesignWidth: 375.5,
              imageDesignAspectRatio: 1,
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back,", style: AppStyles.styleRegular12(context)),
                const Gap(8),
                Text("Tanya Myroniuk", style: AppStyles.styleMeduim18(context)),
              ],
            ),
            const Spacer(),
            const CustomCircleAvatarIcon(icon: Icons.search_sharp),
          ],
        ),
      ),
    );
  }
}
