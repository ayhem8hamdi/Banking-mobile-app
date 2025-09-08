import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    super.key,
    required this.leftText,
    required this.rightText,
  });
  final String leftText, rightText;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText, style: AppStyles.styleMeduim18(context)),
          Text(rightText, style: AppStyles.styleMeduim14(context)),
        ],
      ),
    );
  }
}
