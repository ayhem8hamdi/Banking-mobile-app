import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Transaction", style: AppStyles.styleMeduim18(context)),
          Text("See All", style: AppStyles.styleMeduim14(context)),
        ],
      ),
    );
  }
}
