import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class MonthlySpendingTitle extends StatelessWidget {
  const MonthlySpendingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        "Monthly spending limit",
        style: AppStyles.styleMeduim18(context),
      ),
    );
  }
}
