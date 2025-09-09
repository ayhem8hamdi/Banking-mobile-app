import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/auth/presentation/views/widgets/auth_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StatsCustomAppBar extends StatelessWidget {
  const StatsCustomAppBar({
    super.key,
    required this.text,
    required this.leftIcon,
    required this.rightIcon,
  });
  final String text;
  final IconData leftIcon, rightIcon;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (GoRouter.of(context).canPop()) {
                  GoRouter.of(context).pop();
                } else {
                  // we gonna put flush bar here
                }
              },
              child: CustomCircleAvatarIcon(icon: leftIcon),
            ),
            Text(text, style: AppStyles.styleMeduim18(context)),
            CustomCircleAvatarIcon(icon: rightIcon),
          ],
        ),
      ),
    );
  }
}
