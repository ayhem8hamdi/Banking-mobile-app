import 'package:banking_app/features/home/presentation/views/widgets/card_widget.dart';
import 'package:banking_app/features/home/presentation/views/widgets/custom_background_stack.dart';
import 'package:banking_app/features/home/presentation/views/widgets/transaction_sliver_list.dart';
import 'package:banking_app/features/home/presentation/views/widgets/transaction_title.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/monthly_spending_title.dart';
import 'package:banking_app/features/stats/presentation/views/widgets/stats_custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatsScreenBody extends StatelessWidget {
  const StatsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundStack(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          slivers: [
            StatsCustomAppBar(
              text: "My Cards",
              leftIcon: Icons.arrow_back_ios_new,
              rightIcon: CupertinoIcons.add,
            ),
            SliverGap(32),
            CardWidget(),
            SliverGap(30),
            TransactionTitle(
              leftText: "Latest Transaction",
              rightText: "See All",
            ),
            SliverGap(21),
            TransactionsSliverList(count: 3),
            SliverGap(7),
            MonthlySpendingTitle(),
            SliverGap(19),
          ],
        ),
      ),
    );
  }
}
