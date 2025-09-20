import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class BalanceHeader extends StatelessWidget {
  final double value;

  const BalanceHeader({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$${value.toStringAsFixed(2)}",
          style: AppStyles.styleMeduim26(context),
        ),
      ],
    );
  }
}
