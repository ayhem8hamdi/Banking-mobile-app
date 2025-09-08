import 'package:banking_app/core/utils/styles/app_styles.dart';
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
            MonthlySpendingRangeContainer(),
            SliverGap(19),
          ],
        ),
      ),
    );
  }
}

class MonthlySpendingRangeContainer extends StatelessWidget {
  const MonthlySpendingRangeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 23,
          bottom: 39,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: cs.tertiary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                r"Amount: $8,545.00",
                style: AppStyles.styleRegular13(
                  context,
                ).copyWith(color: cs.onSurface),
              ),
            ),
            const Gap(27),
            const SingleValueSlider(),
          ],
        ),
      ),
    );
  }
}

class SingleValueSlider extends StatefulWidget {
  const SingleValueSlider({super.key});

  @override
  State<SingleValueSlider> createState() => _SingleValueSliderState();
}

class _SingleValueSliderState extends State<SingleValueSlider> {
  double _currentValue = 5000;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        double sliderWidth = constraints.maxWidth;
        double thumbPercent = _currentValue / 10000;
        double thumbX = thumbPercent * (sliderWidth - 26);

        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerLeft,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                activeTrackColor: theme.brightness == Brightness.dark
                    ? Colors.white
                    : cs.primary,
                inactiveTrackColor: cs.surface,
                thumbColor: Colors.white,
                overlayColor: cs.primary,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 10,
                  disabledThumbRadius: 10,
                ),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 13),
              ),
              child: Slider(
                value: _currentValue,
                min: 0,
                max: 10000,
                divisions: 10000,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),

            Positioned(
              left: thumbX,
              bottom: 29,
              child: Text(
                "\$${_currentValue.round().toString()}",
                style: AppStyles.styleRegular12(
                  context,
                ).copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),

            Positioned(
              left: 9,
              bottom: -20,
              child: Text(r"$0", style: AppStyles.styleRegular12(context)),
            ),

            Positioned(
              right: 10,
              bottom: -20,
              child: Text(r"$10,000", style: AppStyles.styleRegular12(context)),
            ),
          ],
        );
      },
    );
  }
}
