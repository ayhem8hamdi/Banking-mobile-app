import 'package:banking_app/core/utils/styles/app_styles.dart';
import 'package:banking_app/features/home/presentation/views/widgets/card_widget.dart';
import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:banking_app/features/home/presentation/views/widgets/home_transactions_types_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            SliverGap(32),
            CardWidget(),
            SliverGap(30),
            TransactionsTypeRow(),
            SliverGap(28),
            TransactionTitle(),
          ],
        ),
      ),
    );
  }
}

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
