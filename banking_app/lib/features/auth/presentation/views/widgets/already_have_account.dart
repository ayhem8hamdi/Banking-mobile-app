import 'package:banking_app/core/router/app_router.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccountSection extends StatelessWidget {
  const AlreadyHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account.",
            style: AppStyles.styleRegular14(context),
          ),
          GestureDetector(
            onTap: () => context.goNamed(AppRouter.signInScreen),
            child: Text(" Sign Up", style: AppStyles.styleMeduim14(context)),
          ),
        ],
      ),
    );
  }
}
