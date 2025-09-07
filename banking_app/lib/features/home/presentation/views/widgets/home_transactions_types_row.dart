import 'package:banking_app/core/utils/app_assets/image_assets.dart';
import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_screen_custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionsTypeRow extends StatelessWidget {
  const TransactionsTypeRow({super.key});
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TransactionTypeItem(icon: ImageAssets.sendIcon, text: "Sent"),
          TransactionTypeItem(icon: ImageAssets.receiveIcon, text: "Receive"),
          TransactionTypeItem(icon: ImageAssets.loanIcon, text: "Loan"),
          TransactionTypeItem(icon: ImageAssets.toPupIcon, text: "Topup"),
        ],
      ),
    );
  }
}

class TransactionTypeItem extends StatelessWidget {
  const TransactionTypeItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Column(
      children: [
        HomeScreenCustomIcon(icon: icon),
        const Gap(7),
        Text(
          text,
          style: AppStyles.styleRegular13(
            context,
          ).copyWith(color: cs.onSurface),
        ),
      ],
    );
  }
}
