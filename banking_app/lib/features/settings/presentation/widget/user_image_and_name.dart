import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserImageAndName extends StatelessWidget {
  const UserImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Row(
          children: [
            AppBarImage(size: 74),
            Gap(16),
            AppBarTexts(title: "Tanya Myroniuk", subTitle: "Flutter Developer"),
          ],
        ),
      ),
    );
  }
}

class AppBarTexts extends StatelessWidget {
  const AppBarTexts({super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMeduim18(context)),
        const Gap(8),
        Text(subTitle, style: AppStyles.styleRegular12(context)),
      ],
    );
  }
}
