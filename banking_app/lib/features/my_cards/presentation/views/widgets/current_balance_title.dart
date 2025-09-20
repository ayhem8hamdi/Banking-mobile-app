import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CurrentBalanceTitle extends StatelessWidget {
  const CurrentBalanceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          "Current Balance",
          style: AppStyles.styleRegular18(context),
        ),
      ),
    );
  }
}
