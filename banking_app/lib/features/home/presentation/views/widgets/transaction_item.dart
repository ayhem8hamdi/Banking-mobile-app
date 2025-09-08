import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/home/domain/transaction_model.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_screen_custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeScreenCustomIcon(
          icon: transactionModel.transactionImage,
          padding: 16,
        ),
        const Gap(17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              transactionModel.transactionTitle,
              style: AppStyles.styleMeduim16(context),
            ),
            const Gap(5),
            Text(
              transactionModel.transactionType,
              style: AppStyles.styleRegular12(context),
            ),
          ],
        ),
        const Spacer(),
        Text(
          transactionModel.transactionPrice,
          style: AppStyles.styleMeduim16(context),
        ),
      ],
    );
  }
}
